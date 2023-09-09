import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_cart/utils/colors.dart';

import '../../controllers/bottom_nav/bottom_navigation_bloc.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(builder: (
      context,
      state,
    ) {
      return BottomNavigationBar(
          currentIndex: state.value,
          onTap: (value) => context.read<BottomNavigationBloc>().add(BottomNavigationValueChangeEvent(value: value)),
          selectedItemColor: primaryWidgetColor,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_grocery_store_rounded), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
          ]);
    });
  }
}
