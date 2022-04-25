import 'package:flutter/material.dart';
import 'package:online_shop_mobile_app/models/product.dart';
import 'package:online_shop_mobile_app/style.dart';

class ProductPage extends StatelessWidget {
  final Product product;
  const ProductPage({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(defaultBorderRadius * 4),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appColor.withOpacity(0.15),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(defaultBorderRadius * 4),
                  ),
                  child: Hero(
                    tag: product.title,
                    child: Image.network(
                      product.imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        padding: const EdgeInsets.all(defaultPadding / 2),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: whiteColor,
                        highlightElevation: 2,
                        height: 40,
                        minWidth: 40,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(defaultBorderRadius * 2),
                        ),
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          color: appColor,
                        ),
                      ),
                      MaterialButton(
                        padding: const EdgeInsets.all(defaultPadding / 2),
                        onPressed: () {},
                        color: whiteColor,
                        highlightElevation: 2,
                        height: 40,
                        minWidth: 40,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(defaultBorderRadius * 2),
                        ),
                        child: const Icon(
                          Icons.favorite_border_rounded,
                          color: appColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    fontSize: 20,
                    color: appColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: defaultPadding * 2),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              product.desc,
              style: const TextStyle(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              padding: const EdgeInsets.all(defaultPadding / 2),
              onPressed: () {},
              color: appColor,
              highlightElevation: 2,
              elevation: 0,
              height: 60,
              minWidth: 200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultBorderRadius * 4),
              ),
              child: const Text(
                "Buy Now",
                style: TextStyle(
                  fontSize: 16,
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            MaterialButton(
              padding: const EdgeInsets.all(defaultPadding / 2),
              onPressed: () {},
              color: greyColor.shade200,
              highlightElevation: 2,
              elevation: 0,
              height: 60,
              minWidth: 60,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultBorderRadius * 4),
              ),
              child: const Icon(
                Icons.shopping_bag,
                size: 30,
                color: appColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
