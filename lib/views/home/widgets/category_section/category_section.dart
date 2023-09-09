import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.categoryList,
  });

  final List<String> categoryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                color: primaryWhite, borderRadius: BorderRadius.circular(15)),
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
    );
  }
}