import { BadRequestException, Injectable } from '@nestjs/common';
import SaleCampaignDto from './utils/dto/sale-campaign.dto';
import TotalResultEntity from './utils/entities/total-price-result.entity';
import { IDatabaseService } from 'src/utils/database/database.service';
import ProductDto from './utils/dto/product.dto';
import SaleCampaignMessageConstant from './utils/constants/sale-campaign-message.constant';
import { CampaignType } from '../../utils/enum/campaign-type.enum';
import { FixedAmountDiscountStrategy } from './utils/strategies/campaign-discount.strategy';

@Injectable()
export class SaleCampaignService {
  constructor(private readonly databaseService: IDatabaseService) {}

  getFinalPriceTotalPrice(dto: SaleCampaignDto): TotalResultEntity {
    let result = this._getTotalPriceWithoutCampaign(dto.products);

    if (dto.campaigns) {
      for (const campaignDto of dto.campaigns) {
        const campaign = this.databaseService.getCampaignById(campaignDto.id);

        switch (campaign.type) {
          case CampaignType.fixedAmount:
            const strategy = new FixedAmountDiscountStrategy();
            result = strategy.getDiscount(result, campaignDto.discount);
            break;
          case CampaignType.percentageDiscount:
            break;
          case CampaignType.percentageDiscountByItemCategory:
            break;
          case CampaignType.discountByPoint:
            break;
          case CampaignType.specialCampaign:
        }
      }
    }

    return { totalPrice: result };
  }

  _getTotalPriceWithoutCampaign(products: ProductDto[]) {
    let result = 0;

    products.forEach((e) => {
      const product = this.databaseService.getProductById(e.id);
      if (product) {
        result += product.price * e.quantity;
        return;
      }
      throw new BadRequestException({
        message: SaleCampaignMessageConstant.productNotFound,
      });
    });

    return result;
  }
}
