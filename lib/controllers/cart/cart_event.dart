part of 'cart_bloc.dart';

class CartEvent {}

class AddToCart extends CartEvent {
  final Product product;
  AddToCart({required this.product});
}

class RemoveFromCart extends CartEvent {
  final Product product;
  RemoveFromCart({required this.product});
}

class GetAllCartItems extends CartEvent {}
