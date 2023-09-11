import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_cart/controllers/cart/cart_bloc.dart';
import 'package:shoping_cart/utils/colors.dart';
import 'package:shoping_cart/utils/constants.dart';

class PriceDetailCard extends StatelessWidget {
  const PriceDetailCard({
    super.key,
    required this.totalProductAmount,
    required this.totalAmount,
    required this.state,
  });

  final num totalProductAmount;
  final num totalAmount;
  final CartState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: double.infinity,
      color: primaryWhite,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Price Details",
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        height10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Price (${state.cartList.length} item)"),
            Text(
              "₹${totalProductAmount.toStringAsFixed(2)}",
            ),
          ],
        ),
        height10,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Discount"),
            Text(
              "-₹10",
              style: TextStyle(color: Colors.green),
            )
          ],
        ),
        height10,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Delivery Charges"), Text("₹40")],
        ),
        height10,
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Amount",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
            ),
            Text(
              "₹${totalAmount.toStringAsFixed(2)}",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
            )
          ],
        ),
        height20,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "You will save ₹10 on this order",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.green),
            ),
          ],
        ),
        height10,
        state.cartList.isEmpty ? Container() : placeOrderContainer()
      ]),
    );
  }

  Container placeOrderContainer() {
    return Container(
      height: 30.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        "Place order",
        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
      )),
    );
  }
}
