import ProductModel from '../../../../utils/models/product.model';
import { ProductCategory } from '../../../../utils/enum/product-category.enum';

export interface RequestInfoEntity {
  productModel: ProductModel;
  productCategory: ProductCategory;
  quantity: number;
}
