abstract interface class ICampaignEntity {
  ICampaignEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.categoryId,
    required this.discountType,
  });

  final int id;
  final String title;
  final String description;
  final int type;
  final int categoryId;
  final int discountType;
}
