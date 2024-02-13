import test, { describe } from 'node:test';
import { FixedAmountDiscountStrategy } from '../../src/features/sale-campaign/utils/strategies/campaign-discount.strategy';

describe('FixedAmountDiscountStrategy', () => {
  it('Given discountAmount and currentTotalPrice When calling FixedAmountDiscountStrategy Then it should return valid final price', () => {
    const strategy = new FixedAmountDiscountStrategy();
    expect(strategy.getDiscount(350, 50)).toBe(300);
    expect(strategy.getDiscount(99999999999999, 8888888888)).toBe(
      99991111111111,
    );
  });
});
