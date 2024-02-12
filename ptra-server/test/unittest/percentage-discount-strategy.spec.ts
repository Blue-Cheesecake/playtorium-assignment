import { describe } from 'node:test';
import { PercentageDiscountStrategy } from '../../src/features/sale-campaign/utils/strategies/campaign-discount.strategy';

describe('PercentageDiscountStrategy', () => {
  it('Given percentage and currentTotalPrice When calling PercentageDiscountStrategy Then it should return valid final price', () => {
    const strategy = new PercentageDiscountStrategy();
    expect(strategy.getDiscount(600, 10)).toBe(540.0);
    expect(strategy.getDiscount(45999, 40)).toBe(27599.4);
    expect(strategy.getDiscount(238472389, 34.5)).toBe(156199414.8);
  });
});
