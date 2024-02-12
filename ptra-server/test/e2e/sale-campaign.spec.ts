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
