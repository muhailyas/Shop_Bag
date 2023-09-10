import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoping_cart/controllers/cart/cart_bloc.dart';
import 'package:shoping_cart/utils/colors.dart';
import 'package:shoping_cart/utils/constants.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            height20,
            const Text(
              "My Cart",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
            ),
            height20,
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                if (state.isFetching) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.separated(
                  separatorBuilder: (context, index) => height10,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.cartList.length,
                  itemBuilder: (context, index) => Container(
                    height: 190,
                    width: 100,
                    decoration: BoxDecoration(
                        color: primaryWhite,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          height: 190,
                          width: 150,
                          decoration: BoxDecoration(
                              color: primaryWhite,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              image: DecorationImage(
                                image:
                                    NetworkImage(state.cartList[index].image),
                              )),
                        ),
                        Container(
                          height: 190,
                          width: 260,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.cartList[index].title
                                      .substring(0, 15),
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                                height10,
                                Text(state.cartList[index].category),
                                height10,
                                RatingBar.builder(
                                  allowHalfRating: true,
                                  initialRating: double.parse(
                                      state.cartList[index].rating),
                                  itemCount: 5,
                                  itemSize: 20,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (value) {},
                                ),
                                height10,
                                Text(
                                  "₹ ${state.cartList[index].price.toString()}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                height10,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        context.read<CartBloc>().add(
                                            RemoveFromCart(
                                                product:
                                                    state.cartList[index]));
                                      },
                                      child: Container(
                                        height: 30,
                                        width: 105,
                                        decoration: BoxDecoration(
                                            color: primaryWidgetColor,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.delete_rounded,
                                                color: primaryWhite,
                                              ),
                                              width10,
                                              Text(
                                                "Remove",
                                                style: TextStyle(
                                                    color: primaryWhite),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 115,
                                      decoration: BoxDecoration(
                                          color: primaryWidgetColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.flash_on_outlined,
                                                size: 18,
                                                color: primaryWhite,
                                              ),
                                              width10,
                                              Text(
                                                "Buy now",
                                                style: TextStyle(
                                                    color: primaryWhite),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            height20,
            BlocBuilder<CartBloc, CartState>(builder: (context, state) {
              num totalAmount = state.cartList.fold<double>(
                      0.0,
                      (previousValue, element) =>
                          previousValue +
                          (double.tryParse(element.price) ?? 0.0)) -
                  10 -
                  40;
              return state.cartList.isEmpty
                  ? const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          SizedBox(height: 400),
                          Text(
                            "Cart is empty",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ])
                  : Container(
                      height: 200,
                      width: double.infinity,
                      color: primaryWhite,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Price Details",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            height10,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Price (${state.cartList.length} item)"),
                                Text(
                                  "₹${state.cartList.fold<double>(0.0, (previousValue, element) => previousValue + (double.tryParse(element.price) ?? 0.0))}",
                                )
                              ],
                            ),
                            height10,
                            const Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Delivery Charges"),
                                Text("₹40")
                              ],
                            ),
                            height10,
                            const Divider(),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Total Amount",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                Text(
                                  "₹$totalAmount",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            height20,
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "You will save ₹10 on this order",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                          ]),
                    );
            }),
            BlocBuilder<CartBloc, CartState>(builder: (context, state) {
              return state.cartList.isEmpty
                  ? Container()
                  : Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        "Place order",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                    );
            }),
          ],
        ),
      ),
    );
  }
}
