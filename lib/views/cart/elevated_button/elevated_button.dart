import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_cart/models/product_model.dart';
import 'package:shoping_cart/utils/colors.dart';
import 'package:shoping_cart/utils/constants.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget(
      {super.key,
      required this.product,
      this.function,
      required this.iconData,
      required this.label});
  final VoidCallback? function;
  final IconData iconData;
  final Product product;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: 30.h,
        width: 95.w,
        decoration: BoxDecoration(
            color: primaryWidgetColor, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              Icon(
                iconData,
                color: primaryWhite,
              ),
              width10,
              Text(
                label,
                style: const TextStyle(color: primaryWhite),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
