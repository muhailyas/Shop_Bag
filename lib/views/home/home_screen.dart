import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_cart/controllers/product/product_bloc.dart';
import 'package:shoping_cart/views/home/widgets/category_section/category_section.dart';
import '../../utils/constants.dart';
import 'widgets/bottom_section/bottom_section.dart';
import 'widgets/upper_section/upper_section.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);
  final List<String> categoryList = [
    "Electronics",
    "Jewelery",
    "Men's clothing",
    "Women's clothing",
  ];
  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(GetAllProductsEvent());
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const UpperSection(),
          height10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // category row
              categoriesRow(),
              height10,
              // category lists
              CategoryListWidget(categoryList: categoryList),
              height20,
              // top rated row
              topRatedRow(context),
              height20,
              // bottom section top Rated
              const BottomSection(),
              height10
            ],
          ),
        ],
      ),
    );
  }

  Padding categoriesRow() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'Categories',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }

  Padding topRatedRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Top Rated",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return InkWell(
                onTap: () {
                  if (state.viewAll) {
                    context
                        .read<ProductBloc>()
                        .add(ViewAllButtonEvent(isView: false));
                  } else {
                    context
                        .read<ProductBloc>()
                        .add(ViewAllButtonEvent(isView: true));
                  }
                },
                child: Row(
                  children: [
                    Text(state.viewAll ? "View More" : "View Less"),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
