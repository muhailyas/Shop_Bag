part of 'cart_bloc.dart';

class CartState {
  final List<Product> cartList;
  final bool isFetching;
  CartState({required this.cartList, this.isFetching = false});
}

final class CartInitial extends CartState {
  CartInitial() : super(cartList: []);
}
