import 'package:bloc/bloc.dart';
part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationInitial()) {
    on<BottomNavigationValueChangeEvent>((event, emit) {
      return emit(BottomNavigationState(value: event.value));
    });
  }
}
