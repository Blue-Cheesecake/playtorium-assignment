import { IsArray, IsNotEmpty, IsOptional, ValidateIf } from 'class-validator';
import ProductDto from './product.dto';
import CampaignDto from './campaign.dto';

export default class SaleCampaignDto {
  @IsNotEmpty()
  @IsArray()
  products: ProductDto[];

  @IsArray()
  @IsOptional()
  @ValidateIf((_, value) => value != null)
  campaigns?: CampaignDto[];
}
