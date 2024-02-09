import { Injectable } from '@nestjs/common';
import { SaleCampaignDto } from './utils/dto/sale-campaign.dto';
import TotalResultEntity from './utils/entities/total-price-result.entity';

@Injectable()
export class SaleCampaignService {
  getFinalPriceTotalPrice(dto: SaleCampaignDto): TotalResultEntity {
    // TODO: implements
    return {
      totalPrice: 0,
    };
  }
}
