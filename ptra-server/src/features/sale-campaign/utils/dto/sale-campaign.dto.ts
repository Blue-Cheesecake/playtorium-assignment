import { IsNotEmpty } from 'class-validator';
import ProductDto from './product.dto';
import CampaignDto from './campaign.dto';

export default class SaleCampaignDto {
  @IsNotEmpty()
  products: ProductDto[];
  campaigns?: CampaignDto[];
}
