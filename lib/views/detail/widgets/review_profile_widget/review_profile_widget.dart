import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_cart/models/product_model.dart';
import '../../../../utils/constants.dart';

class ReviewProfileWidget extends StatelessWidget {
  const ReviewProfileWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          itemSize: 20.h,
          initialRating: double.parse(product.rating),
          minRating: 1,
          allowHalfRating: true,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (value) {},
        ),
        width30,
        SizedBox(
          height: 30.h,
          width: 180.w,
          child: Stack(
            children: [
              const Positioned(
                  left: 80,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg"),
                  )),
              const Positioned(
                  left: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i0.wp.com/smsforwishes.com/wp-content/uploads/2022/10/4e9f035d05faeb0561835197a51a51f5.jpeg?resize=235%2C294&quality=100&ssl=1"),
                  )),
              const Positioned(
                  left: 120,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg"),
                  )),
              const Positioned(
                  left: 140,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://waterfordwhispersnews.com/wp-content/uploads/2019/11/shutterstock_1429797230.jpg"),
                  )),
              const Positioned(
                  left: 160,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/portrait-optimistic-businessman-formalwear_1262-3600.jpg"),
                  )),
              Positioned(
                  left: 185,
                  top: 10,
                  child: Text(
                    "+${product.ratingCount}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
