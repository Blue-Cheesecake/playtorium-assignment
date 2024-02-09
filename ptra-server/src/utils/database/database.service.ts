import { Injectable } from '@nestjs/common';
import { ProductCategory } from '../enum/product-category.enum';
import ProductModel from 'src/utils/models/product.model';
import CampaignModel from '../models/campaign.model';
import { CampaignType } from '../enum/campaign-type.enum';
import { DiscountType } from '../enum/discount-type.enum';

export abstract class IDatabaseService {
  abstract getCampaignById(id: number): CampaignModel | null | undefined;
  abstract getProductById(id: number): ProductModel | null | undefined;
  abstract getProductCategoryFromId(
    id: number,
  ): ProductCategory | null | undefined;
}

@Injectable()
export class MockDatabaseService implements IDatabaseService {
  /**
   * Campaigns Table
   */
  getCampaignById(id: number): CampaignModel | null | undefined {
    if (id === 1) {
      return new CampaignModel(
        1,
        CampaignType.fixedAmount,
        'Discounts the entire cart by subtracting an amount from the total price',
        1,
        DiscountType.decimal,
      );
    }
    if (id === 2) {
      return new CampaignModel(
        2,
        CampaignType.percentageDiscount,
        'Discounts the entire cart by subtracting a percentage from the total price',
        1,
        DiscountType.percentage,
      );
    }
    if (id === 3) {
      return new CampaignModel(
        3,
        CampaignType.percentageDiscountByItemCategory,
        'Discount the entire amount of a specific category of items in cart',
        2,
        DiscountType.percentage,
      );
    }
    if (id === 4) {
      return new CampaignModel(
        4,
        CampaignType.discountByPoint,
        'Users spent points for a fixed amount of discount (1 point = 1 THB). The amount will be capped at 20% of total price. Noted that "20%" is fixed rule',
        2,
        DiscountType.decimal,
      );
    }
    if (id === 5) {
      return new CampaignModel(
        5,
        CampaignType.specialCampaign,
        '',
        3,
        DiscountType.decimal,
      );
    }
    return null;
  }
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
