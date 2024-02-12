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

export class PercentageDiscountStrategy
  implements ICampaignDiscountStrategy<number>
{
  getDiscount(currentTotalPrice: number, percentage: number): number {
    return currentTotalPrice - currentTotalPrice * (percentage / 100);
  }
}
