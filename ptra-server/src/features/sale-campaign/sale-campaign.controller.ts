import { Body, Controller, HttpCode, HttpStatus, Post } from '@nestjs/common';
import TotalResultEntity from './utils/entities/total-price-result.entity';
import { SaleCampaignService } from './sale-campaign.service';
import SaleCampaignDto from './utils/dto/sale-campaign.dto';
import { IDatabaseService } from '../../utils/database/database.service';
import SaleCampaignValidationPipe from './utils/pipes/sale-campaign-validation.pipe';

@Controller('api/v1/sale-campaign')
export class SaleCampaignController {
  constructor(
    private readonly saleCampaignService: SaleCampaignService,
    private readonly databaseService: IDatabaseService,
  ) {}

  @Post()
  @HttpCode(HttpStatus.OK)
  getFinalTotalPrice(@Body() dto: SaleCampaignDto): TotalResultEntity {
    const pipe = new SaleCampaignValidationPipe(this.databaseService);
    pipe.transform(dto, { type: 'body', metatype: SaleCampaignDto });

    const result = this.saleCampaignService.getFinalPriceTotalPrice(dto);
    return result;
  }
}
