import { Injectable } from '@nestjs/common';
import SaleCampaignDto from './utils/dto/sale-campaign.dto';
import TotalResultEntity from './utils/entities/total-price-result.entity';
import { IDatabaseService } from 'src/utils/database/database.service';
import { NoCampaignStrategy } from './utils/strategies/calculation.strategy';

@Injectable()
export class SaleCampaignService {
  constructor(private readonly databaseService: IDatabaseService) {}

  getFinalPriceTotalPrice(dto: SaleCampaignDto): TotalResultEntity {
    // Case null or empty campaigns
    if (!dto.campaigns) {
      return {
        totalPrice: new NoCampaignStrategy(this.databaseService).execute(
          dto.products,
        ),
      };
    }

    return {
      totalPrice: 0,
    };
  }
}
