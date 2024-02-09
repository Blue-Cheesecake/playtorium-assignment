import { Body, Controller, HttpCode, HttpStatus, Post } from '@nestjs/common';
import TotalResultEntity from './utils/entities/total-price-result.entity';
import { SaleCampaignService } from './sale-campaign.service';
import SaleCampaignDto from './utils/dto/sale-campaign.dto';

@Controller('api/v1/sale-campaign')
export class SaleCampaignController {
  constructor(private readonly saleCampaignService: SaleCampaignService) {}

  @Post()
  @HttpCode(HttpStatus.OK)
  getFinalTotalPrice(@Body() dto: SaleCampaignDto): TotalResultEntity {
    const result = this.saleCampaignService.getFinalPriceTotalPrice(dto);
    return result;
  }
}
