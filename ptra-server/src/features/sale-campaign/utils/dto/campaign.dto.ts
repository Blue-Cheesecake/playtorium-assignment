import {
  IsEnum,
  IsInt,
  IsNotEmpty,
  IsNumber,
  IsOptional,
} from 'class-validator';
import { ProductCategory } from '../../../..//utils/enum/product-category.enum';

export default class CampaignDto {
  @IsInt()
  @IsNotEmpty()
  id: number;

  /**
   * The discount value, percentage, or custmer points
   *
   * Allow percentage only percentage discount
   */
  @IsNumber()
  @IsNotEmpty()
  discount: number;

  /**
   * Available only SpecialCampaigns
   */
  @IsNumber()
  @IsOptional()
  everyXPrice?: number;

  /**
   * Available only PercentageDiscountByItemCategory
   */
  @IsEnum(ProductCategory, { each: true })
  @IsOptional()
  productCategory?: ProductCategory;
}
