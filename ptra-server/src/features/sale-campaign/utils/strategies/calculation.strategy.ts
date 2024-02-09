import { BadRequestException } from '@nestjs/common';
import ProductDto from '../dto/product.dto';
import { IDatabaseService } from '../../../../utils/database/database.service';
import SaleCampaignMessageConstant from '../constants/sale-campaign-message.constant';

export abstract class ICalculationStrategy {
  abstract execute(products: [ProductDto]): number;
}

export class NoCampaignStrategy implements ICalculationStrategy {
  constructor(private readonly databaseService: IDatabaseService) {}

  execute(products: [ProductDto]): number {
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
