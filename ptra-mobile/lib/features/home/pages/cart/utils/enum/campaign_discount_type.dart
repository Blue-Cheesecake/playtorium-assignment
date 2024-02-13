enum CampaignDiscountType {
  baht(symbol: '฿'),
  percentage(symbol: '%'),
  point(symbol: 'P');

  const CampaignDiscountType({required this.symbol});

  final String symbol;
}
