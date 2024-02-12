import { describe } from 'node:test';
import { PercentageDiscountByItemCategoryStrategy } from '../../src/features/sale-campaign/utils/strategies/campaign-discount.strategy';
import { ProductCategory } from '../../src/utils/enum/product-category.enum';
import ProductModel from '../../src/utils/models/product.model';

describe('PercentageDiscountStrategy', () => {
  it('Given category clothing When calling PercentageDiscountByItemCategoryStrategy Then it should return valid final price', () => {
    const strategy = new PercentageDiscountByItemCategoryStrategy();
    expect(
      strategy.getDiscount(2540, {
        category: ProductCategory.clothing,
        discountPercentage: 15,
        productsInfo: [
          {
            productCategory: ProductCategory.clothing,
            productModel: new ProductModel(1, 'clothe1', 1, 350),
            quantity: 1,
          },
          {
            productCategory: ProductCategory.clothing,
            productModel: new ProductModel(1, 'clothe2', 1, 700),
            quantity: 1,
          },
          {
            productCategory: ProductCategory.accessories,
            productModel: new ProductModel(1, 'acc1', 1, 850),
            quantity: 1,
          },
          {
            productCategory: ProductCategory.accessories,
            productModel: new ProductModel(1, 'acc2', 1, 640),
            quantity: 1,
          },
        ],
      }),
    ).toBe(2382.5);
  });

  it('Given category accessories When calling PercentageDiscountByItemCategoryStrategy Then it should return valid final price', () => {
    const strategy = new PercentageDiscountByItemCategoryStrategy();
    expect(
      strategy.getDiscount(2540, {
        category: ProductCategory.accessories,
        discountPercentage: 45,
        productsInfo: [
          {
            productCategory: ProductCategory.clothing,
            productModel: new ProductModel(1, 'clothe1', 1, 350),
            quantity: 1,
          },
          {
            productCategory: ProductCategory.clothing,
            productModel: new ProductModel(1, 'clothe2', 1, 700),
            quantity: 1,
          },
          {
            productCategory: ProductCategory.accessories,
            productModel: new ProductModel(1, 'acc1', 1, 850),
            quantity: 1,
          },
          {
            productCategory: ProductCategory.accessories,
            productModel: new ProductModel(1, 'acc2', 1, 640),
            quantity: 1,
          },
        ],
      }),
    ).toBe(1869.5);
  });
});
