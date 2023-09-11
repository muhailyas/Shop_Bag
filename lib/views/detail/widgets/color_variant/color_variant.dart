import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_cart/controllers/category_card/category_card_bloc.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';

class ColorVariantWidget extends StatelessWidget {
  ColorVariantWidget({
    super.key,
  });
  final List<Color> items = [Colors.red, primaryWidgetColor, Colors.brown];
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
        SizedBox(
          height: 30.h,
          width: 120.w,
          child: ListView.separated(
            itemCount: 3,
            separatorBuilder: (context, index) => width10,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) => CircleAvatar(
              radius: 20,
              backgroundColor: items[index],
              child: BlocBuilder<CategoryCardBloc, CategoryCardState>(
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      context
                          .read<CategoryCardBloc>()
                          .add(CategorySelected(index: index));
                    },
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: state.isSelectedIndex == index
                          ? Colors.white
                          : items[index],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        width30,
        width10,
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
