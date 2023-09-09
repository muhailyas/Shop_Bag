import 'package:flutter/material.dart';
import 'package:shoping_cart/utils/colors.dart';
import 'package:shoping_cart/utils/constants.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: double.infinity),
        height10,
        const Text(
          "Profile",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        height10,
        Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(
              color: primaryWidgetColor,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.statusfacebook.com/profile_pictures/profile_pic_for_girls/profile_pictures_for_girls01.jpg"),
                  fit: BoxFit.cover)),
        ),
        height20,
        const Text(
          "Sara",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        height10,
        const Text(
          "+91 909019029",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
