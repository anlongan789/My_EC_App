part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class StartWishList extends WishlistEvent {}

class AddWishList extends WishlistEvent {
  final Product product;

  const AddWishList(this.product);

  @override
  // TODO: implement props
  List<Object> get props => [product];
}

class RemoveWishList extends WishlistEvent {
  final Product product;

  const RemoveWishList(this.product);

  @override
  // TODO: implement props
  List<Object> get props => [product];
}
