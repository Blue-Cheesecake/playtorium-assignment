import { describe } from 'node:test';
import { SpecialCampaignsStrategy } from '../../src/features/sale-campaign/utils/strategies/campaign-discount.strategy';

describe('SpecialCampaignStrategy', () => {
  it('Given discount at every x price When calling SpecialCampaignStrategy Then it should return valid final total price', () => {
    const strategy = new SpecialCampaignsStrategy();
    expect(
      strategy.getDiscount(830, {
        discount: 40,
        everyXPrice: 300,
      }),
    ).toBe(750);
    expect(
      strategy.getDiscount(15320.5, {
        discount: 9999,
        everyXPrice: 3,
      }),
    ).toBe(0);
  });
});
