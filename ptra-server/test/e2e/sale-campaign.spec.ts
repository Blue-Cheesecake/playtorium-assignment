import { Test, TestingModule } from '@nestjs/testing';
import { INestApplication } from '@nestjs/common';
import * as request from 'supertest';
import { AppModule } from '../../src/app.module';

describe('AppController (e2e)', () => {
  let app: INestApplication;

  beforeEach(async () => {
    const moduleFixture: TestingModule = await Test.createTestingModule({
      imports: [AppModule],
    }).compile();

    app = moduleFixture.createNestApplication();
    await app.init();
  });

  describe('Single Strategy', () => {
    it('/api/v1/sale-campaign (PercentageDiscount)', () => {
      return request(app.getHttpServer())
        .post('/api/v1/sale-campaign')
        .send({
          products: [
            {
              id: 1,
              quantity: 1,
            },
            {
              id: 2,
              quantity: 1,
            },
          ],
          campaigns: [
            {
              id: 2,
              discount: 10,
            },
          ],
        })
        .expect(200)
        .expect({
          totalPrice: 540,
        });
    });
  });

  describe('Two Combined Strategy', () => {
    it('/api/v1/sale-campaign (FixedAmount + PercentageDiscountByItemCategory) (Normal Order Campaigns)', () => {
      // All = 350+500+2100+850+640 = 4440
      // Discount = 4440 - 400 - 122.5 - 735 = 3182.5
      return request(app.getHttpServer())
        .post('/api/v1/sale-campaign')
        .send({
          products: [
            {
              id: 1,
              quantity: 1,
            },
            {
              id: 2,
              quantity: 2,
            },
            {
              id: 3,
              quantity: 3,
            },
            {
              id: 4,
              quantity: 1,
            },
            {
              id: 5,
              quantity: 1,
            },
          ],
          campaigns: [
            {
              id: 1,
              discount: 400,
            },
            {
              id: 3,
              discount: 35,
              productCategory: 'Clothing',
            },
          ],
        })
        .expect(200)
        .expect({
          totalPrice: 3182.5,
        });
    });

    it('/api/v1/sale-campaign (FixedAmount + PercentageDiscountByItemCategory) (Random Order Campaigns)', () => {
      // All = 350+500+2100+850+640 = 4440
      // Discount = 4440 - 400 - 122.5 - 735 = 3182.5
      return request(app.getHttpServer())
        .post('/api/v1/sale-campaign')
        .send({
          products: [
            {
              id: 1,
              quantity: 1,
            },
            {
              id: 2,
              quantity: 2,
            },
            {
              id: 3,
              quantity: 3,
            },
            {
              id: 4,
              quantity: 1,
            },
            {
              id: 5,
              quantity: 1,
            },
          ],
          campaigns: [
            {
              id: 3,
              discount: 35,
              productCategory: 'Clothing',
            },
            {
              id: 1,
              discount: 400,
            },
          ],
        })
        .expect(200)
        .expect({
          totalPrice: 3182.5,
        });
    });

    it('/api/v1/sale-campaign (FixedAmount + DiscountByPoints) (Normal Order Campaigns)', () => {
      // All = 350+500+2100+850+640 = 4440
      return request(app.getHttpServer())
        .post('/api/v1/sale-campaign')
        .send({
          products: [
            {
              id: 1,
              quantity: 1,
            },
            {
              id: 2,
              quantity: 2,
            },
            {
              id: 3,
              quantity: 3,
            },
            {
              id: 4,
              quantity: 1,
            },
            {
              id: 5,
              quantity: 1,
            },
          ],
          campaigns: [
            {
              id: 1,
              discount: 350.5,
            },
            {
              id: 4,
              discount: 9999,
            },
          ],
        })
        .expect(200)
        .expect({
          totalPrice: 3271.6,
        });
    });

    it('/api/v1/sale-campaign (PercentageDiscount + DiscountByPoints) (Random Order Campaigns)', () => {
      // All = 350+500+2100+850+640 = 4440
      return request(app.getHttpServer())
        .post('/api/v1/sale-campaign')
        .send({
          products: [
            {
              id: 1,
              quantity: 1,
            },
            {
              id: 2,
              quantity: 2,
            },
            {
              id: 3,
              quantity: 3,
            },
            {
              id: 4,
              quantity: 1,
            },
            {
              id: 5,
              quantity: 1,
            },
          ],
          campaigns: [
            {
              id: 4,
              discount: 50,
            },
            {
              id: 2,
              discount: 15,
            },
          ],
        })
        .expect(200)
        .expect({
          totalPrice: 3724,
        });
    });
  });
});
