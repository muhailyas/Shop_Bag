part of 'category_card_bloc.dart';

class CategoryCardState {
  final int isSelectedIndex;
  CategoryCardState({required this.isSelectedIndex});
}

final class CategoryCardInitial extends CategoryCardState {
  CategoryCardInitial() : super(isSelectedIndex: 0);
}
