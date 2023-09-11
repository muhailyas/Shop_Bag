import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_cart/controllers/category_card/category_card_bloc.dart';
import 'package:shoping_cart/utils/colors.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget(
      {super.key, required this.categoryList, required this.index});
  final int index;
  final List<String> categoryList;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCardBloc, CategoryCardState>(
      builder: (context, state) {
        var selected = index == state.isSelectedIndex;
        return Padding(
          padding: EdgeInsets.only(
              left: index == 0 ? 20 : 0,
              right: index == categoryList.length - 1 ? 20 : 0),
          child: InkWell(
            splashColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,
            onTap: () {
              context
                  .read<CategoryCardBloc>()
                  .add(CategorySelected(index: index));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: selected ? primaryWidgetColor : primaryWhite,
                  borderRadius: BorderRadius.circular(15)),
              height: 30,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    categoryList[index],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: selected ? primaryWhite : primaryWidgetColor),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
