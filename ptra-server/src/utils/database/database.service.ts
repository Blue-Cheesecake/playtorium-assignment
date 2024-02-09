import { Injectable } from '@nestjs/common';
import { ProductCategory } from '../enum/product-category.enum';
import ProductModel from 'src/utils/models/product.model';

export abstract class IDatabaseService {
  abstract getProductById(id: number): ProductModel | null | undefined;
  abstract getProductCategoryFromId(
    id: number,
  ): ProductCategory | null | undefined;
}

@Injectable()
export class MockDatabaseService implements IDatabaseService {
  /**
   * Products Table
   */
  getProductById(id: number): ProductModel | null | undefined {
    if (id === 1) {
      return new ProductModel(1, 'T Shirt', 1, 350.0);
    }
    if (id === 2) {
      return new ProductModel(2, 'Hat', 2, 250.0);
    }
    if (id === 3) {
      return new ProductModel(3, 'Hoodie', 1, 700.0);
    }
    if (id === 4) {
      return new ProductModel(4, 'Watch', 2, 850.0);
    }
    if (id === 5) {
      return new ProductModel(5, 'Bag', 2, 640.0);
    }
    if (id === 6) {
      return new ProductModel(6, 'Belt', 2, 230.0);
    }
    return null;
  }

  /**
   * ProductCategory Table
   */
  getProductCategoryFromId(id: number): ProductCategory | null | undefined {
    if (id === 1) {
      return ProductCategory.clothing;
    }
    if (id === 2) {
      return ProductCategory.accessories;
    }
    if (id === 3) {
      return ProductCategory.electronics;
    }
    return null;
  }
}
