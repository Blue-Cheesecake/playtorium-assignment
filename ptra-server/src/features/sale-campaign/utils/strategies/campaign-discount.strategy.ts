export interface ICampaignDiscountStrategy<P> {
  getDiscount(currentTotalPrice: number, params: P): number;
}

export class FixedAmountDiscountStrategy
  implements ICampaignDiscountStrategy<number>
{
  getDiscount(currentTotalPrice: number, discountAmount: number): number {
    return currentTotalPrice - discountAmount;
  }
}
