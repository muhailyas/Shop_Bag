import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_cart/api/api_service.dart';
import 'package:shoping_cart/controllers/cart/cart_bloc.dart';
import 'package:shoping_cart/controllers/category_card/category_card_bloc.dart';
import 'package:shoping_cart/controllers/product/product_bloc.dart';
import 'package:shoping_cart/views/main_page/main_page.dart';

import 'controllers/bottom_nav/bottom_navigation_bloc.dart';

void main() {
  runApp(const ShoppingCart());
}

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    ApiServices().getAllProduct();
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => BottomNavigationBloc(),
              ),
              BlocProvider(
                create: (context) => ProductBloc(),
              ),
              BlocProvider(
                create: (context) => CategoryCardBloc(),
              ),
              BlocProvider(
                create: (context) => CartBloc(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: MainPage(),
            ),
          );
        });
  }
}
