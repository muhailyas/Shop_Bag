import 'package:flutter/material.dart';
import 'package:shoping_cart/api/api_service.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.widgets_rounded,
                size: 35,
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://images.statusfacebook.com/profile_pictures/profile_pic_for_girls/profile_pictures_for_girls01.jpg"),
              )
            ],
          ),
          height20,
          const Text(
            "Discover Our Fashion \nBest Sellers",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          height30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: secondaryWhite),
                height: 70,
                width: 330,
                child: const Center(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none))),
                ),
              ),
              InkWell(
                onTap: () async {
                  await ApiServices().addProduct(
                      title: 'shirt',
                      category: "men's clothing",
                      description: 'description',
                      image: 'https://image',
                      price: '999');
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: secondaryWhite,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Icon(Icons.tune_rounded),
                ),
              )
            ],
          ),
          height20,
          Container(
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              color: primaryWhite,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 130,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://fullyfilmy.in/cdn/shop/products/New-Mockups---no-hanger---TShirt-Yellow.jpg?v=1639657077"))),
                ),
                const Column(
                  children: [
                    height30,
                    Text(
                      "RRR T-Shirt XL",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    height10,
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          "3.0",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        width30,
                        Text(
                          '\$ 99',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        width10,
                        Text(
                          "\$139",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                width30,
                width30,
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: primaryWidgetColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: primaryWhite,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
