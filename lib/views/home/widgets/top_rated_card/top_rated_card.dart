import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/product_model.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';
import '../../../detail/screen_details.dart';

class TopRatedCardWidget extends StatelessWidget {
  const TopRatedCardWidget({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenDetail(product: product),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
            color: secondaryWhite, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            height20,
            height10,
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                color: primaryWhite,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    product.image,
                  ),
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
            Text(
              product.title.substring(0, 10),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            height10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 13.h,
                  color: Colors.yellow,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  product.rating,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                width30,
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
