import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_cart/models/product_model.dart';
import 'package:shoping_cart/utils/colors.dart';
import 'package:shoping_cart/utils/constants.dart';
import 'package:shoping_cart/views/detail/widgets/top_bar/top_bar_widget.dart';

import 'widgets/color_variant/color_variant.dart';

class ScreenDetail extends StatelessWidget {
  const ScreenDetail({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height10,
                const TopBarWidget(),
                height20,
                imageContainer(image: product.image),
                height20,
                titleRow(title: product.title, prize: product.price),
                height20,
                const Text(
                  "Description",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
                height10,
                Text(
                  product.description,
                  maxLines: 7,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                height30,
                height10,
                const ColorVariantWidget(),
                height30,
                height30,
                addToCart()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row addToCart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.favorite_border_rounded,
          size: 30,
        ),
        Container(
          width: 300,
          height: 65,
          decoration: BoxDecoration(
            color: primaryWidgetColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add to cart",
                style: TextStyle(
                    fontSize: 18,
                    color: primaryWhite,
                    fontWeight: FontWeight.w500),
              ),
              width30,
              width30,
              CircleAvatar(
                radius: 19,
                backgroundColor: primaryWhite,
                child: Icon(
                  Icons.local_grocery_store_rounded,
                  color: primaryWidgetColor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Row titleRow({required String title, required num prize}) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 200.w,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          "\$$prize",
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        width10,
      ],
    );
  }

  Container imageContainer({required image}) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
