import { BadRequestException, Injectable } from '@nestjs/common';
import SaleCampaignDto from './utils/dto/sale-campaign.dto';
import TotalResultEntity from './utils/entities/total-price-result.entity';
import ProductDto from './utils/dto/product.dto';
import { IDatabaseService } from 'src/utils/database/database.service';
import SaleCampaignMessageConstant from './utils/constants/sale-campaign-message.constant';

@Injectable()
export class SaleCampaignService {
  constructor(private readonly databaseService: IDatabaseService) {}

  getFinalPriceTotalPrice(dto: SaleCampaignDto): TotalResultEntity {
    // Case null or empty campaigns
    if (dto.campaigns) {
      return {
        totalPrice: this._calculatePriceWithoutCampaign(dto.products),
      };
    }

    return {
      totalPrice: 0,
    };
  }

  private _calculatePriceWithoutCampaign(products: [ProductDto]): number {
    let result = 0;

    products.forEach((e) => {
      const product = this.databaseService.getProductById(e.id);
      if (!product) {
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
