import { Module } from '@nestjs/common';
import { SaleCampaignController } from './sale-campaign.controller';
import { SaleCampaignService } from './sale-campaign.service';

@Module({
  controllers: [SaleCampaignController],
  providers: [SaleCampaignService],
})
export class SaleCampaignModule {}
