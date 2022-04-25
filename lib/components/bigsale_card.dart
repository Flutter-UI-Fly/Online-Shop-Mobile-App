import 'package:flutter/material.dart';
import 'package:online_shop_mobile_app/style.dart';

class BigSaleCard extends StatelessWidget {
  const BigSaleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: appColor,
        borderRadius: BorderRadius.circular(defaultBorderRadius * 4),
        boxShadow: [
          BoxShadow(
            color: appColor.withOpacity(0.25),
            spreadRadius: 4,
            blurRadius: 8,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Flexible(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(defaultPadding),
              child: Image.asset('assets/images/bigsale.png'),
            ),
          ),
          Flexible(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Big Sale",
                    style: TextStyle(
                      fontSize: 20,
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Get the trandy fashion at a discont of up to 50%",
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
