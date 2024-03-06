import { IDatabaseService } from '../database/database.service';
import { DiscountType } from '../enum/discount-type.enum';
import { CampaignType } from '../enum/campaign-type.enum';
import CampaignModel from '../models/campaign.model';
import CampaignDto from '../../features/sale-campaign/utils/dto/campaign.dto';
import { ProductCategory } from '../enum/product-category.enum';

export default class ValidationFunction {
  static isCampaignDtoListValid(
    databaseService: IDatabaseService,
    campaigns?: CampaignDto[],
  ): boolean {
    if (!campaigns) {
      return true;
    }

    // Check Id of incoming
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

    if (!this._isCampaignCategoryValidDuplicated(campaignModels)) {
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
   * Return `true` for valid Dto, `false` otherwise
   *
   * For example, Category Coupon, there should be either `Fixed Amount` or `Percentage Discount`
   */
  private static _isCampaignCategoryValidDuplicated(
    campaigns: CampaignModel[],
  ): boolean {
    const map = new Map<number, number>(); // categoryId : campaignId

    for (let campaign of campaigns) {
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
    if (!dto.discount) {
      return false;
    }

    if (!Object.values(ProductCategory).includes(dto.productCategory)) {
      return false;
    }

    // value checking
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
    if (
      campaign.type === CampaignType.specialCampaign &&
      dto.everyXPrice &&
      dto.everyXPrice < 0
    ) {
      return false;
    }

    // everyXPrice exist only SpecialCampaign Type
    if (
      (campaign.type !== CampaignType.specialCampaign && dto.everyXPrice) ||
      (campaign.type === CampaignType.specialCampaign && !dto.everyXPrice)
    ) {
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
