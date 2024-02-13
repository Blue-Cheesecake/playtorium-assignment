import { describe } from 'node:test';
import CampaignDto from '../../src/features/sale-campaign/utils/dto/campaign.dto';
import {
  MockDatabaseService,
  IDatabaseService,
} from '../../src/utils/database/database.service';
import { ProductCategory } from '../../src/utils/enum/product-category.enum';
import ValidationFunction from '../../src/utils/functions/validation.function';

describe('ValidationFunction', () => {
  describe('isCampaignDtoListValid', () => {
    let databaseService: IDatabaseService;

    beforeEach(() => {
      databaseService = new MockDatabaseService();
    });

    test('Given valid campaings list When isCampaignDtoListValid is called Then it should return true', () => {
      const p: CampaignDto[] = [
        {
          id: 1,
          discount: 40,
        },
        {
          id: 1,
          discount: 150,
        },
        {
          id: 3,
          discount: 99,
          productCategory: ProductCategory.clothing,
        },
        {
          id: 3,
          discount: 1,
          productCategory: ProductCategory.clothing,
        },
        {
          id: 5,
          discount: 120,
          everyXPrice: 300,
        },
      ];
      expect(
        ValidationFunction.isCampaignDtoListValid(databaseService, p),
      ).toBeTruthy();
    });

    test('Given invalid campaings list (duplicated category on different campaign) When isCampaignDtoListValid is called Then it should return false', () => {
      const p1: CampaignDto[] = [
        {
          id: 1,
          discount: 40,
        },
        {
          id: 1,
          discount: 150,
        },
        {
          id: 2,
          discount: 99,
        },
        {
          id: 2,
          discount: 23,
        },
      ];
      expect(
        ValidationFunction.isCampaignDtoListValid(databaseService, p1),
      ).toBeFalsy();

      const p2: CampaignDto[] = [
        {
          id: 3,
          discount: 40,
        },
        {
          id: 3,
          discount: 10,
        },
        {
          id: 4,
          discount: 99,
        },
        {
          id: 4,
          discount: 23,
        },
      ];
      expect(
        ValidationFunction.isCampaignDtoListValid(databaseService, p2),
      ).toBeFalsy();

      const p3: CampaignDto[] = [
        {
          id: 1,
          discount: 40,
        },
        {
          id: 1,
          discount: 150,
        },
        {
          id: 2,
          discount: 99,
        },
        {
          id: 2,
          discount: 23,
        },
        {
          id: 3,
          discount: 40,
        },
        {
          id: 3,
          discount: 10,
        },
        {
          id: 4,
          discount: 99,
        },
        {
          id: 4,
          discount: 23,
        },
      ];
      expect(
        ValidationFunction.isCampaignDtoListValid(databaseService, p3),
      ).toBeFalsy();
    });

    test('Given invalid campaings list (invalid discount value) When isCampaignDtoListValid is called Then it should return false', () => {
      // Percentage is more than 100
      const p1: CampaignDto[] = [
        {
          id: 1,
          discount: 40,
        },
        {
          id: 3,
          discount: 3003,
          productCategory: ProductCategory.clothing,
        },
      ];

      expect(
        ValidationFunction.isCampaignDtoListValid(databaseService, p1),
      ).toBeFalsy();

      // Percentage is less than 0
      const p2: CampaignDto[] = [
        {
          id: 2,
          discount: -5,
        },
        {
          id: 3,
          discount: 1,
          productCategory: ProductCategory.clothing,
        },
      ];

      expect(
        ValidationFunction.isCampaignDtoListValid(databaseService, p2),
      ).toBeFalsy();

      // DecimalValue is less than 0
      const p3: CampaignDto[] = [
        {
          id: 1,
          discount: -432,
        },
        {
          id: 3,
          discount: 1,
          productCategory: ProductCategory.clothing,
        },
      ];

      expect(
        ValidationFunction.isCampaignDtoListValid(databaseService, p3),
      ).toBeFalsy();
    });

    test('Given invalid campaings list (invalid dto prop) When isCampaignDtoListValid is called Then it should return false', () => {
      const p1: CampaignDto[] = [
        {
          id: 1,
          discount: 400,
          productCategory: ProductCategory.accessories,
        },
      ];
      expect(
        ValidationFunction.isCampaignDtoListValid(databaseService, p1),
      ).toBeFalsy();

      const p2: CampaignDto[] = [
        {
          id: 1,
          discount: 400,
          productCategory: ProductCategory.accessories,
          everyXPrice: 300,
        },
      ];
      expect(
        ValidationFunction.isCampaignDtoListValid(databaseService, p2),
      ).toBeFalsy();

      const p3: CampaignDto[] = [
        {
          id: 1,
          discount: 400,
          everyXPrice: 500,
        },
      ];
      expect(
        ValidationFunction.isCampaignDtoListValid(databaseService, p3),
      ).toBeFalsy();
    });
  });
});
