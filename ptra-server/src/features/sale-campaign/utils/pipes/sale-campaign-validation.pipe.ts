import {
  ArgumentMetadata,
  BadRequestException,
  Injectable,
  PipeTransform,
} from '@nestjs/common';
import SaleCampaignDto from '../dto/sale-campaign.dto';
import ValidationFunction from '../../../..//utils/functions/validation.function';
import { IDatabaseService } from '../../../../utils/database/database.service';
import SaleCampaignMessageConstant from '../constants/sale-campaign-message.constant';

@Injectable()
export default class SaleCampaignValidationPipe
  implements PipeTransform<SaleCampaignDto, SaleCampaignDto>
{
  constructor(private readonly databaseService: IDatabaseService) {}

  transform(
    value: SaleCampaignDto,
    metadata: ArgumentMetadata,
  ): SaleCampaignDto {
    if (
      ValidationFunction.isCampaignDtoListValid(
        this.databaseService,
        value.campaigns,
      )
    ) {
      return value;
    }
    throw new BadRequestException({
      message: SaleCampaignMessageConstant.invalidDto,
    });
  }
}
