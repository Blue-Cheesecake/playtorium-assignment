import { BadRequestException, Injectable } from '@nestjs/common';
import SaleCampaignDto from './utils/dto/sale-campaign.dto';
import TotalResultEntity from './utils/entities/total-price-result.entity';
import { IDatabaseService } from 'src/utils/database/database.service';
import ProductDto from './utils/dto/product.dto';
import SaleCampaignMessageConstant from './utils/constants/sale-campaign-message.constant';

@Injectable()
export class SaleCampaignService {
  constructor(private readonly databaseService: IDatabaseService) {}

  getFinalPriceTotalPrice(dto: SaleCampaignDto): TotalResultEntity {
    let result = this._getTotalPriceWithoutCampaign(dto.products);

    if (!dto.campaigns) {
      return { totalPrice: result };
    }

    return {
      totalPrice: 0,
    };
  }

  _getTotalPriceWithoutCampaign(products: [ProductDto]) {
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
