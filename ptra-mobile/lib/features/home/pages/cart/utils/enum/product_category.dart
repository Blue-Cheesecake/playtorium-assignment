enum ProductCategory {
  clothing(label: 'Clothing'),
  accessories(label: 'Accessories'),
  electronics(label: 'Electronics');

  const ProductCategory({required this.label});

  final String label;
}
