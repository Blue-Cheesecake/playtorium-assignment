import { BadRequestException, Injectable } from '@nestjs/common';
import SaleCampaignDto from './utils/dto/sale-campaign.dto';
import TotalResultEntity from './utils/entities/total-price-result.entity';
import { IDatabaseService } from '../..//utils/database/database.service';
import ProductDto from './utils/dto/product.dto';
import SaleCampaignMessageConstant from './utils/constants/sale-campaign-message.constant';
import { CampaignType } from '../../utils/enum/campaign-type.enum';
import {
  DiscountByPoints,
  FixedAmountDiscountStrategy,
  PercentageDiscountByItemCategoryStrategy,
  PercentageDiscountStrategy,
  SpecialCampaignsStrategy,
} from './utils/strategies/campaign-discount.strategy';
import { IterateProductDtoResult } from './utils/entities/result.entity';
import { RequestInfoEntity } from './utils/entities/request-info.entitiy';

@Injectable()
export class SaleCampaignService {
  constructor(private readonly databaseService: IDatabaseService) {}

  getFinalPriceTotalPrice(dto: SaleCampaignDto): TotalResultEntity {
    const result = this._getTotalPriceWithoutCampaign(dto.products);
    let totalPrice = result.totalPrice;

    if (dto.campaigns) {
      // The order of applying campaigns is Coupon > On Top > Seasonal.
      // To satisfy this condition, the id in database should be organized in ascending order
      const sortedCampaignTypes = [...dto.campaigns].sort(
        (a, b) => a.id - b.id,
      );

      for (const campaignDto of sortedCampaignTypes) {
        const campaign = this.databaseService.getCampaignById(campaignDto.id);
        switch (campaign.type) {
          case CampaignType.fixedAmount:
            totalPrice = new FixedAmountDiscountStrategy().getDiscount(
              totalPrice,
              campaignDto.discount,
            );
            break;
          case CampaignType.percentageDiscount:
            totalPrice = new PercentageDiscountStrategy().getDiscount(
              totalPrice,
              campaignDto.discount,
            );
            break;
          case CampaignType.percentageDiscountByItemCategory:
            totalPrice =
              new PercentageDiscountByItemCategoryStrategy().getDiscount(
                totalPrice,
                {
                  category: campaignDto.productCategory,
                  discountPercentage: campaignDto.discount,
                  productsInfo: result.productsInfo,
                },
              );
            break;
          case CampaignType.discountByPoint:
            // Assume the user id
            const user = this.databaseService.getUserFromId(1);
            if (user.points < campaignDto.discount) {
              throw new BadRequestException({
                message: 'User points are not enough to process',
              });
            }

            totalPrice = new DiscountByPoints().getDiscount(
              totalPrice,
              campaignDto.discount,
            );
            break;
          case CampaignType.specialCampaign:
            totalPrice = new SpecialCampaignsStrategy().getDiscount(
              totalPrice,
              {
                discount: campaignDto.discount,
                everyXPrice: campaignDto.everyXPrice,
              },
            );
            break;
        }
      }
    }

    return { totalPrice: totalPrice };
  }

  private _getTotalPriceWithoutCampaign(
    products: ProductDto[],
  ): IterateProductDtoResult {
    let totalPrice = 0;
    const productsInfo: RequestInfoEntity[] = [];

    products.forEach((e) => {
      const product = this.databaseService.getProductById(e.id);
      const category = this.databaseService.getProductCategoryFromId(
        product.categoryId,
      );

      productsInfo.push({
        productModel: product,
        productCategory: category,
        quantity: e.quantity,
      });

      if (product) {
        totalPrice += product.price * e.quantity;
        return;
      }
      throw new BadRequestException({
        message: SaleCampaignMessageConstant.productNotFound,
      });
    });

    return {
      totalPrice: totalPrice,
      productsInfo: productsInfo,
    };
  }
}
