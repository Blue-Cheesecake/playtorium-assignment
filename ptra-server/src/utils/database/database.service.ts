import { Injectable } from '@nestjs/common';
import { ProductCategory } from '../enum/product-category.enum';

export abstract class IDatabaseService {
  abstract getProductCategoryFromId(
    id: number,
  ): ProductCategory | null | undefined;
}

@Injectable()
export class MockDatabaseService implements IDatabaseService {
  getProductCategoryFromId(id: number): ProductCategory | null | undefined {
    if (id === 1) {
      return ProductCategory.clothing;
    }
    if (id === 2) {
      return ProductCategory.laptop;
    }
    if (id === 3) {
      return ProductCategory.monitor;
    }
    return null;
  }
}
