import 'package:flutter/material.dart';
import 'package:shoping_cart/utils/colors.dart';
import 'package:shoping_cart/utils/constants.dart';

class ScreenDetail extends StatelessWidget {
  const ScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              height10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: secondaryWhite,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                  ),
                  const Text(
                    "Detail",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: secondaryWhite,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz_rounded)),
                  ),
                ],
              ),
              height20,
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://m.media-amazon.com/images/I/51uiOdEqoDL._AC_UY1100_.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              height20,
              const Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Calvin Klein T-Shirt",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Calvin Klein",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "\$ 59",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  width10,
                ],
              ),
              height20,
              const Text(
                "Description",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
              height10,
              const Text(
                '''Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket''',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              height30,
              height10,
              Row(
                children: [
                  const Text(
                    "Color",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  width30,
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: primaryWhite,
                    ),
                  ),
                  width20,
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: primaryWidgetColor,
                  ),
                  width20,
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey,
                  ),
                  width30,
                  width30,
                  Container(
                    height: 45,
                    width: 110,
                    decoration: BoxDecoration(
                        color: primaryWidgetColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        width10,
                        Container(
                          width: 30,
                          height: 35,
                          decoration: BoxDecoration(
                              color: primaryWhite,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(
                            Icons.add,
                            size: 18,
                          ),
                        ),
                        width10,
                        const Text(
                          '1',
                          style: TextStyle(color: primaryWhite),
                        ),
                        width10,
                        Container(
                          decoration: BoxDecoration(
                              color: primaryWhite,
                              borderRadius: BorderRadius.circular(5)),
                          width: 30,
                          height: 35,
                          child: const Icon(
                            Icons.remove,
                            size: 18,
                          ),
                        ),
                        width10
                      ],
                    ),
                  )
                ],
              ),
              height30,
              height30,
              Row(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
