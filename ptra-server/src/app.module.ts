import { Module } from '@nestjs/common';
import { SaleCampaignModule } from './sale-campaign/sale-campaign.module';

@Module({
  imports: [SaleCampaignModule],
  controllers: [],
  providers: [],
})
export class AppModule {}
