import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_cart/views/home/home_screen.dart';
import 'package:shoping_cart/views/profile/screen_profile.dart';
import 'package:shoping_cart/views/widgets/bottom_navigation.dart';
import 'package:shoping_cart/views/cart/cart.dart';

import '../../controllers/bottom_nav/bottom_navigation_bloc.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final List<Widget> bodyScreens = [
    ScreenHome(),
    const ScreenCart(),
    const ScreenProfile()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
            builder: (context, state) {
          return bodyScreens[state.value];
        }),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
