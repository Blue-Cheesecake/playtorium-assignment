import '../../../../domain/domain.dart';

class CartInputInfoModel {
  CartInputInfoModel({required this.data, required this.quantity});

  final IProductEntity data;
  final int quantity;
}
