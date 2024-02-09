import { CampaignType } from '../enum/campaign-type.enum';
import { DiscountType } from '../enum/discount-type.enum';

export default class CampaignModel {
  id: number;
  type: CampaignType;
  description: string;
  discountType: DiscountType;
  categoryId: number;

  constructor(
    id: number,
    type: CampaignType,
    description: string,
    categoryId: number,
    discountType: DiscountType,
  ) {
    this.id = id;
    this.description = description;
    this.type = type;
    this.categoryId = categoryId;
    this.discountType = discountType;
  }
}
