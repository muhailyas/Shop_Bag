import 'package:flutter/material.dart';
import 'package:shoping_cart/view/detail/screen_details.dart';
import '../../utils/colors.dart';
import '../../utils/constants.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);
  final List<String> categoryList = [
    "Levi's",
    "Wrangler",
    "Calvin Klein",
    "Zara",
    "Tommy Hilfiger",
    "Allen Solly"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
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
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none))),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: secondaryWhite,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(Icons.tune_rounded),
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
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
          ),
          height10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              height10,
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                        left: index == 0 ? 20 : 0,
                        right: index == categoryList.length - 1 ? 20 : 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: primaryWhite,
                          borderRadius: BorderRadius.circular(15)),
                      height: 30,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            categoryList[index],
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: primaryWidgetColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => width10,
                ),
              ),
              height20,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [Text("View all"), Icon(Icons.arrow_drop_down)],
                    )
                  ],
                ),
              ),
              height20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3.2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenDetail(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: secondaryWhite,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          height20,
                          Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              color: primaryWhite,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://m.media-amazon.com/images/I/51uiOdEqoDL._AC_UY1100_.jpg"),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.red,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                          height10,
                          const Text(
                            "Calvin Klein T-Shirt",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          height10,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Calvin Klein"),
                              width20,
                              Text(
                                "\$59",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              height10
            ],
          ),
        ],
      ),
    );
  }
}
