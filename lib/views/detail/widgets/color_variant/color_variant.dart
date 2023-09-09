import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';

class ColorVariantWidget extends StatelessWidget {
  const ColorVariantWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Color",
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        width30,
        const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: primaryWhite,
          ),
        ),
        width20,
        const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.red,
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
                height: 30,
                decoration: BoxDecoration(
                    color: primaryWhite,
                    borderRadius: BorderRadius.circular(5)),
                child: const Icon(
                  Icons.remove,
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
                height: 30,
                child: const Icon(
                  Icons.add,
                  size: 18,
                ),
              ),
              width10
            ],
          ),
        )
      ],
    );
  }
}
