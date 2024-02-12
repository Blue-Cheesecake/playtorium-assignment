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
