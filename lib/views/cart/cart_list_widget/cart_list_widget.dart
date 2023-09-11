import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_cart/controllers/cart/cart_bloc.dart';
import 'package:shoping_cart/views/cart/cart_tile_widget/cart_tile_widget.dart';
import '../../../utils/constants.dart';

class CartListWidget extends StatelessWidget {
  const CartListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state.isFetching) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.separated(
            separatorBuilder: (context, index) => height10,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.cartList.length,
            itemBuilder: (context, index) => CartTileWidget(
                  product: state.cartList[index],
                ));
      },
    );
  }
}
