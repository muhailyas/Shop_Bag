part of 'bottom_navigation_bloc.dart';

class BottomNavigationState {
  int value;
  BottomNavigationState({required this.value});
}

final class BottomNavigationInitial extends BottomNavigationState {
  BottomNavigationInitial() : super(value: 0);
}
