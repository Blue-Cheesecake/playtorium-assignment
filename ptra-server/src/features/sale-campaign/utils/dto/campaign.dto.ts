import { IsInt, IsNotEmpty, IsNumber } from 'class-validator';

export default class CampaignDto {
  @IsInt()
  @IsNotEmpty()
  id: number;

  @IsNumber()
  @IsNotEmpty()
  discount: number; //NOTE: allow percentage only percentage discount

  @IsNumber()
  every?: number; // NOTE: available only Special Campaigns
}
