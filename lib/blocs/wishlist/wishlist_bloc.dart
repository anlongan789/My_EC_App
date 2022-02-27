import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading());

  @override
  Stream<WishlistState> mapEventToState(
    WishlistEvent event,
  ) async* {
    if (event is StartWishList) {
      yield* _mapStartWishListToState();
    } else if (event is AddWishList) {
      yield* _mapAddWishListToState(event, state);
    } else if (event is RemoveWishList) {
      yield* _mapRemoveWishListToState(event, state);
    }
  }

  Stream<WishlistState> _mapStartWishListToState() async* {
    yield WishlistLoading();
    try {
      await Future<void>.delayed(Duration(seconds: 1));
      yield const WishlistLoaded();
    } catch (_) {}
  }

  Stream<WishlistState> _mapAddWishListToState(
      AddWishList event, WishlistState state) async* {
    if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(
          wishlist: WishList(
            products: List.from(state.wishlist.products)..add(event.product),
          ),
        );
      } catch (_) {}
    }
  }

  Stream<WishlistState> _mapRemoveWishListToState(
      RemoveWishList event, WishlistState state) async* {
    if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(
          wishlist: WishList(
            products: List.from(state.wishlist.products)..remove(event.product),
          ),
        );
      } catch (_) {}
    }
  }
}
