import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel implements IProductEntity {
  factory ProductModel({
    required final int id,
    required final String name,
    required final int categoryId,
    required final double price,
    required final String imageURL,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
