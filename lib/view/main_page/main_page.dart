import 'package:flutter/material.dart';
import 'package:shoping_cart/utils/constants.dart';
import 'package:shoping_cart/view/home/home_screen.dart';
import 'package:shoping_cart/view/widgets/bottom_navigation.dart';
import 'package:shoping_cart/view/wishlist/wishlist.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final List<Widget> bodyScreens = [ ScreenHome(), const ScreenWishList()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, value, _) {
              return bodyScreens[value];
            }),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
