part of 'category_card_bloc.dart';

class CategoryCardEvent {}

class CategorySelected extends CategoryCardEvent {
  final int index;
  CategorySelected({required this.index});
}

class CategoryDeselected extends CategoryCardEvent {
  final int index;
  CategoryDeselected({required this.index});
}
