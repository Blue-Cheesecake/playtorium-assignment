import { IsNotEmpty } from 'class-validator';
import ProductDto from './product.dto';

export default class SaleCampaignDto {
  @IsNotEmpty()
  products: [ProductDto];
}
