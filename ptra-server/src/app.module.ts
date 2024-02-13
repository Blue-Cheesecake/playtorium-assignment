import { Module } from '@nestjs/common';
import { SaleCampaignModule } from './features/sale-campaign/sale-campaign.module';
import { DatabaseModule } from './utils/database/database.module';
import { ProductModule } from './features/product/product.module';

@Module({
  imports: [SaleCampaignModule, DatabaseModule, ProductModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
