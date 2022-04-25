import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:online_shop_mobile_app/components/components.dart';
import 'package:online_shop_mobile_app/models/category.dart';
import 'package:online_shop_mobile_app/models/product.dart';
import 'package:online_shop_mobile_app/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: defaultPadding / 2,
          ),
          child: MaterialButton(
            padding: const EdgeInsets.all(defaultPadding / 2),
            onPressed: () {},
            color: whiteColor,
            elevation: 0,
            highlightElevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultBorderRadius * 2),
            ),
            child: const Icon(
              Icons.grid_view_rounded,
              color: appColor,
            ),
          ),
        ),
        title: Column(
          children: const [
            Text(
              "Hello",
              style: TextStyle(
                fontSize: 14,
                color: greyColor,
              ),
            ),
            Text(
              "Chansy",
              style: TextStyle(
                fontSize: 16,
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: blackColor,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          // Search box
          const SliverAppBar(
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SearchBox(),
            ),
          ),
          // Big sale card
          const SliverToBoxAdapter(child: BigSaleCard()),
          // Categories
          SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 2),
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) =>
                      CategoryCard(category: categories[index]),
                ),
              ),
            ),
          ),
          // Prouducts list
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverMasonryGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: defaultPadding / 2,
              mainAxisSpacing: defaultPadding / 2,
              itemBuilder: (context, index) =>
                  ProductCard(product: products[index]),
              childCount: products.length,
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
