import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/constants.dart';
import '../category_card/category_card.dart';

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
      height: 30.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) =>
            CategoryCardWidget(categoryList: categoryList, index: index),
        separatorBuilder: (context, index) => width10,
      ),
    );
  }
}
