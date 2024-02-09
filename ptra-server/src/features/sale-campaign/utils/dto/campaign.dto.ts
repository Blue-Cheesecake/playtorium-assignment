import {
  IsEnum,
  IsInt,
  IsNotEmpty,
  IsNumber,
  IsOptional,
} from 'class-validator';
import { ProductCategory } from 'src/utils/enum/product-category.enum';

export default class CampaignDto {
  @IsInt()
  @IsNotEmpty()
  id: number;

  @IsNumber()
  @IsNotEmpty()
  discount: number; //allow percentage only percentage discount

  @IsNumber()
  @IsOptional()
  everyXPrice?: number; // available only SpecialCampaigns

  @IsEnum(ProductCategory, { each: true })
  @IsOptional()
  productCategory?: ProductCategory; // available only PercentageDiscountByItemCategory
}
