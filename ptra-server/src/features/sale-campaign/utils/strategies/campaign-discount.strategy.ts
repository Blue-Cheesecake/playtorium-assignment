import { PercentageDiscountByItemCategoryStrategyParams } from '../entities/params.entity';

export interface ICampaignDiscountStrategy<P> {
  getDiscount(currentTotalPrice: number, params: P): number;
}

export class FixedAmountDiscountStrategy
  implements ICampaignDiscountStrategy<number>
{
  /**
   * Rounding Algorithm Ref: https://stackoverflow.com/questions/11832914/how-to-round-to-at-most-2-decimal-places-if-necessary
   */
  getDiscount(currentTotalPrice: number, discountAmount: number): number {
    const discount = currentTotalPrice - discountAmount;
    return Math.round((discount + Number.EPSILON) * 100) / 100;
  }
}

export class PercentageDiscountStrategy
  implements ICampaignDiscountStrategy<number>
{
  getDiscount(currentTotalPrice: number, percentage: number): number {
    const discount = currentTotalPrice - currentTotalPrice * (percentage / 100);
    return Math.round((discount + Number.EPSILON) * 100) / 100;
  }
}

export class PercentageDiscountByItemCategoryStrategy
  implements
    ICampaignDiscountStrategy<PercentageDiscountByItemCategoryStrategyParams>
{
  getDiscount(
    currentTotalPrice: number,
    params: PercentageDiscountByItemCategoryStrategyParams,
  ): number {
    let result = currentTotalPrice;

    params.productsInfo.forEach((e) => {
      // NOTE: if productCategory from dto is invalid, it still does not satisfy this condition
      if (e.productCategory === params.category) {
        const originalPrice = e.quantity * e.productModel.price;
        const deductedOriginPrice =
          originalPrice - originalPrice * (params.discountPercentage / 100);

        result -= originalPrice;
        result += deductedOriginPrice;
      }
    });

    return Math.round((result + Number.EPSILON) * 100) / 100;
  }
}
