enum ProductCategory {
  clothing(label: 'Clothing'),
  accessories(label: 'Accessories'),
  electronics(label: 'Electronics');

  const ProductCategory({required this.label});

  final String label;

  static ProductCategory? fromLabel(String label) {
    for (var cat in ProductCategory.values) {
      if (cat.label == label) {
        return cat;
      }
    }
    return null;
  }
}
