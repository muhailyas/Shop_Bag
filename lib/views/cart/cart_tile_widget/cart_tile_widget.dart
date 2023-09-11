
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_cart/models/product_model.dart';
import 'package:shoping_cart/utils/colors.dart';
import 'package:shoping_cart/utils/constants.dart';
import 'package:shoping_cart/views/cart/elevated_button/elevated_button.dart';

import '../../../controllers/cart/cart_bloc.dart';

class CartTileWidget extends StatelessWidget {
  const CartTileWidget({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: 85.w,
      decoration: BoxDecoration(
          color: primaryWhite, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          // image container
          imageContainer(),
          Container(
            height: 135.h,
            width: 225.w,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product title
                  Text(
                    product.title.substring(0, 15),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  height10,
                  // category
                  Text(product.category),
                  height10,
                  // ratingbar
                  RatingBar.builder(
                    allowHalfRating: true,
                    initialRating: double.parse(product.rating),
                    itemCount: 5,
                    itemSize: 20,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {},
                  ),
                  height10,
                  // price
                  Text(
                    "₹ ${product.price.toString()}",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  height10,
                  //remove and buy now button row
                  buttonRow(context)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Row buttonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButtonWidget(
          product: product,
          iconData: Icons.delete,
          label: 'Remove',
          function: () {
            context
                .read<CartBloc>()
                .add(AddToCartAndRemove(product: product, add: false));
          },
        ),
        ElevatedButtonWidget(
          product: product,
          iconData: Icons.flash_on_outlined,
          label: 'Buy now',
        ),
      ],
    );
  }

  Container imageContainer() {
    return Container(
      height: 160.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: primaryWhite,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          image: DecorationImage(
            image: NetworkImage(product.image),
          )),
    );
  }
}