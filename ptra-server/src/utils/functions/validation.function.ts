import CampaignDto from 'src/features/sale-campaign/utils/dto/campaign.dto';
import CommonConstantValues from '../constants/common-constant-values';
import { IDatabaseService } from '../database/database.service';
import { DiscountType } from '../enum/discount-type.enum';
import { CampaignType } from '../enum/campaign-type.enum';
import CampaignModel from '../models/campaign.model';

export default class ValidationFunction {
  static isCampaignDtoListValid(
    databaseService: IDatabaseService,
    campaigns?: CampaignDto[],
  ): boolean {
    if (!campaigns) {
      return true;
    }

    let isValidCampaignId = true;
    const campaignModels = campaigns.map((e) => {
      const r = databaseService.getCampaignById(e.id);
      if (!r) {
        isValidCampaignId = false;
      }
      return r;
    });
    if (!isValidCampaignId) {
      return false;
    }

    if (this._isCampaignCategoryValidDuplicated(campaignModels)) {
      return false;
    }

    for (let i = 0; i < campaigns.length; i++) {
      if (!this._isCampaignDtoValid(campaigns[i], campaignModels[i])) {
        return false;
      }
    }
    return true;
  }

  /**
   * Category should not be duplicated with different Campaign
   *
   * For example, Category Coupon, there should be either `Fixed Amount` or `Percentage Discount`
   */
  private static _isCampaignCategoryValidDuplicated(
    campaigns: CampaignModel[],
  ): boolean {
    const map = new Map<number, number>(); // categoryId : campaignId

    for (let i = 0; i < campaigns.length; i++) {
      const campaign = campaigns[i];
      if (!map.has(campaign.categoryId)) {
        map.set(campaign.categoryId, campaign.id);
        continue;
      }
      if (map.get(campaign.categoryId) !== campaign.id) {
        return false;
      }
    }
    return true;
  }

  /**
   * Check discount value and special prop
   */
  private static _isCampaignDtoValid(
    dto: CampaignDto,
    campaign: CampaignModel,
  ): boolean {
    switch (campaign.discountType) {
      case DiscountType.percentage:
        if (dto.discount < 0 || dto.discount > 100) {
          // Percentage should be 0...100
          return false;
        }
        break;

      case DiscountType.decimal:
        if (dto.discount < 0) {
          return false;
        }
        break;
    }

    // everyXPrice exist only SpecialCampaign Type
    if (campaign.type !== CampaignType.specialCampaign && dto.everyXPrice) {
      return false;
    }
    if (campaign.type === CampaignType.specialCampaign && !dto.everyXPrice) {
      return false;
    }

    // productCategory exist only PercentageDiscountByItemCategory type
    if (
      campaign.type !== CampaignType.percentageDiscountByItemCategory &&
      dto.productCategory
    ) {
      return false;
    }
    if (
      campaign.type === CampaignType.percentageDiscountByItemCategory &&
      !dto.productCategory
    ) {
      return false;
    }

    return true;
  }
}
