abstract interface class IProductEntity {
  IProductEntity({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.price,
    required this.imageURL,
  });

  final int id;
  final String name;
  final int categoryId;
  final double price;
  final String imageURL;
}
