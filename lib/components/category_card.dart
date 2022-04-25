import 'package:flutter/material.dart';
import 'package:online_shop_mobile_app/models/category.dart';
import 'package:online_shop_mobile_app/style.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: category.title == 'All' ? appColor : greyColor.shade300,
        borderRadius: BorderRadius.circular(defaultBorderRadius * 2),
      ),
      child: Text(
        category.title,
        style: TextStyle(
          fontSize: 16,
          color: category.title == 'All' ? whiteColor : greyColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
