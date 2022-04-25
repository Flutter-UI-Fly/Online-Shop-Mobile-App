import 'package:flutter/material.dart';
import 'package:online_shop_mobile_app/models/product.dart';
import 'package:online_shop_mobile_app/pages/pages.dart';
import 'package:online_shop_mobile_app/style.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductPage(product: product),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            child: Hero(
              tag: product.title,
              child: Image.network(
                product.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(defaultPadding / 2),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      Text(
                        "\$${product.price}",
                        style: const TextStyle(
                          color: appColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  height: 35,
                  minWidth: 35,
                  color: greyColor.shade200,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(defaultBorderRadius * 2),
                  ),
                  padding: const EdgeInsets.all(defaultPadding / 4),
                  child: const Icon(
                    Icons.favorite_border_rounded,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
