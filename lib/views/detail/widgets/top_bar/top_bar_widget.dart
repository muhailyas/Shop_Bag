import 'package:flutter/material.dart';
import 'package:shoping_cart/utils/colors.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: secondaryWhite, borderRadius: BorderRadius.circular(10)),
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
              color: secondaryWhite, borderRadius: BorderRadius.circular(10)),
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_horiz_rounded)),
        ),
      ],
    );
  }
}
