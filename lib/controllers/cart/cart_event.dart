part of 'cart_bloc.dart';

class CartEvent {}

class AddToCartAndRemove extends CartEvent {
  final Product product;
  final bool add;
  AddToCartAndRemove({required this.product, required this.add});
}

class RemoveFromCart extends CartEvent {
  final Product product;
  RemoveFromCart({required this.product});
}

class GetAllCartItems extends CartEvent {}
