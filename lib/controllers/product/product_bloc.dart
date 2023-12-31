import 'package:bloc/bloc.dart';
import 'package:shoping_cart/api/api_service.dart';
import 'package:shoping_cart/models/product_model.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<GetAllProductsEvent>((event, emit) async {
      emit(ProductState(categoryList: [], fetching: true));
      final products = await ApiServices().getAllProduct();
      return emit(ProductState(categoryList: products, fetching: false));
    });
    on<ViewAllButtonEvent>((event, emit) async {
      return emit(ProductState(
          categoryList: state.categoryList,
          viewAll: event.isView ? true : false));
    });
  }
}
