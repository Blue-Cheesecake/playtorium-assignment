import { describe } from 'node:test';
import { DiscountByPoints } from '../../src/features/sale-campaign/utils/strategies/campaign-discount.strategy';

describe('DiscountByPointsStrategy', () => {
  it('Given valid customer points When calling DiscountByPointsStrategy Then it should return valid final total price', () => {
    const strategy = new DiscountByPoints();
    expect(strategy.getDiscount(830, 68)).toBe(762);
  });

  it('Given valid customer points but points is exceeded 20% When calling DiscountByPointsStrategy Then it should return valid final total price which not deduced more than 20%', () => {
    const strategy = new DiscountByPoints();
    expect(strategy.getDiscount(830, 99999)).toBe(664);
  });
});
