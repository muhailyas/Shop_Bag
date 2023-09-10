import 'package:bloc/bloc.dart';
import 'package:shoping_cart/models/product_model.dart';
import 'package:shoping_cart/utils/constants.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<AddToCart>((event, emit) {
      emit(CartState(cartList: cartItems, isFetching: true));
      cartItems.add(event.product);
      return emit(CartState(cartList: cartItems, isFetching: false));
    });
    on<RemoveFromCart>((event, emit) {
      emit(CartState(cartList: cartItems, isFetching: true));
      cartItems.remove(event.product);
      return emit(CartState(cartList: cartItems, isFetching: false));
    });
    on<GetAllCartItems>((event, emit) {
      emit(CartState(cartList: [], isFetching: true));
      return emit(CartState(cartList: cartItems, isFetching: false));
    });
  }
}
