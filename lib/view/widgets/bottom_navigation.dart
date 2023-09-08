import 'package:flutter/material.dart';
import 'package:shoping_cart/utils/constants.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, value, _) {
          return BottomNavigationBar(
              currentIndex: value,
              onTap: (value) => indexChangeNotifier.value = value,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.greenAccent,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag), label: 'Wishlist'),
              ]);
        });
  }
}
