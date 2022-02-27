import 'package:equatable/equatable.dart';

import 'package:flutter_ec_app/models/product_model.dart';

class Cart extends Equatable {
  final List<Product> products;
  const Cart({this.products = const <Product>[]});

  double get subTotal =>
      products.fold(0, (total, current) => total + current.price);

  double deliveryFee(subtotal) {
    if (subtotal >= 30.0) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 30.0) {
      return 'You have free delivery';
    } else {
      double missing = 30.0 - subtotal;
      return 'Add ${missing.toStringAsFixed(2)}\$ for FREE delivery ';
    }
  }

  double total(subtotal, deliveryfee) {
    return subtotal + deliveryfee(subtotal);
  }

  String get totalToString => total(subTotal, deliveryFee).toStringAsFixed(2);

  String get freeDeliveryString => freeDelivery(subTotal);

  String get subTotalString => subTotal.toStringAsFixed(2);

  String get deliveryFeeString => deliveryFee(subTotal).toStringAsFixed(2);

  // List<Product> products = [
  //   Product(
  //     name: 'Coca Cola',
  //     category: 'Soft Drinks',
  //     imgUrl:
  //         "https://kenh14cdn.com/thumb_w/600/2016/coca3-1455639387726-0-0-2400-3840-crop-1455641728316.jpeg",
  //     price: 1.99,
  //     isRecommended: true,
  //     isPopular: true,
  //   ),
  //   Product(
  //     name: 'Coca Cola',
  //     category: 'Soft Drinks',
  //     imgUrl:
  //         "https://kenh14cdn.com/thumb_w/600/2016/coca3-1455639387726-0-0-2400-3840-crop-1455641728316.jpeg",
  //     price: 1.99,
  //     isRecommended: true,
  //     isPopular: true,
  //   ),
  //   Product(
  //     name: 'Coca Cola',
  //     category: 'Soft Drinks',
  //     imgUrl:
  //         "https://kenh14cdn.com/thumb_w/600/2016/coca3-1455639387726-0-0-2400-3840-crop-1455641728316.jpeg",
  //     price: 1.99,
  //     isRecommended: true,
  //     isPopular: true,
  //   ),
  //   Product(
  //     name: '7Up',
  //     category: 'Soft Drinks',
  //     imgUrl:
  //         "https://kenh14cdn.com/thumb_w/640/pr/2021/1622356910902-884-0-1843-1536-crop-1622356925069-63757979067355.jpg",
  //     price: 1.59,
  //     isRecommended: false,
  //     isPopular: false,
  //   ),
  //   Product(
  //     name: 'Coconut Raspberry',
  //     category: 'Smoothies',
  //     imgUrl:
  //         "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/coconut-raspberry-smoothie-1641852442.jpg?crop=0.665xw:1.00xh;0.199xw,0&resize=980:*",
  //     price: 2.99,
  //     isRecommended: true,
  //     isPopular: true,
  //   ),
  // ];

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
