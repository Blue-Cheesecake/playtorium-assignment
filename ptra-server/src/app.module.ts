import { Module } from '@nestjs/common';
import { SaleCampaignModule } from './features/sale-campaign/sale-campaign.module';
import { DatabaseModule } from './utils/database/database.module';

@Module({
  imports: [SaleCampaignModule, DatabaseModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
