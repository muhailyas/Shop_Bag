import 'package:bloc/bloc.dart';
part 'category_card_event.dart';
part 'category_card_state.dart';

class CategoryCardBloc extends Bloc<CategoryCardEvent, CategoryCardState> {
  CategoryCardBloc() : super(CategoryCardInitial()) {
    on<CategorySelected>((event, emit) {
      return emit(CategoryCardState(isSelectedIndex: event.index));
    });
  }
}
