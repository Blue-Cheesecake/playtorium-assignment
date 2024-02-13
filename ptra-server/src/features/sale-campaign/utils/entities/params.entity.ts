import { ProductCategory } from '../../../../utils/enum/product-category.enum';
import { RequestInfoEntity } from './request-info.entitiy';

export interface PercentageDiscountByItemCategoryStrategyParams {
  productsInfo: RequestInfoEntity[];
  category: ProductCategory;
  discountPercentage: number;
}

export interface SpecialCampaignStrategyParams {
  everyXPrice: number;
  discount: number;
}
