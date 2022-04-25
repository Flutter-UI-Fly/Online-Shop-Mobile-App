import 'package:flutter/material.dart';
import 'package:online_shop_mobile_app/style.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: Row(
        children: const [
          Icon(Icons.manage_search_rounded),
          SizedBox(width: defaultPadding / 2),
          Text(
            "Search here",
            style: TextStyle(color: greyColor),
          ),
        ],
      ),
    );
  }
}
