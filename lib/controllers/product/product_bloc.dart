import 'package:bloc/bloc.dart';
import 'package:shoping_cart/api/api_service.dart';
import 'package:shoping_cart/models/product_model.dart';
import 'package:shoping_cart/utils/constants.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<GetAllProductsEvent>((event, emit) async {
      emit(ProductState(categoryList: [], fetching: true));
      productList = await ApiServices().getAllProduct();
      return emit(ProductState(categoryList: productList, fetching: false));
    });
    on<ViewAllEvent>((event, emit) async {
      return emit(ProductState(categoryList: productList, viewAll: true));
    });
    on<ViewLessEvent>((event, emit) async {
      return emit(ProductState(categoryList: productList, viewAll: false));
    });
  }
}
