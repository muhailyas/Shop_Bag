part of 'product_bloc.dart';

class ProductState {
  final List<Product> categoryList;
  final bool fetching;
  final bool viewAll;
  ProductState(
      {required this.categoryList, this.fetching = false, this.viewAll = true});
}

final class ProductInitial extends ProductState {
  ProductInitial() : super(categoryList: []);
}
