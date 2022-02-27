import 'package:equatable/equatable.dart';

import 'package:flutter_ec_app/models/product_model.dart';

class Cart extends Equatable {
  final List<Product> products;
  const Cart({this.products = const <Product>[]});

  Map productQuantity(products) {
    var quantity = Map();

    products.forEach((product) {
      if (!quantity.containsKey(product)) {
        quantity[product] = 1;
      } else {
        quantity[product] += 1;
      }
    });
    return quantity;
  }

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

  @override
  // TODO: implement props
  List<Object?> get props => [products];
}
