import 'package:flutter/material.dart';
import 'package:swiftshop/components/Banner/S/banner_s_style_1.dart';
import 'package:swiftshop/components/Banner/S/banner_s_style_5.dart';
import 'package:swiftshop/constants.dart';
import 'package:swiftshop/routes/screen_export.dart';

import 'components/best_sellers.dart';
import 'components/flash_sale.dart';
import 'components/most_popular.dart';
import 'components/offer_carousel_and_categories.dart';
import 'components/popular_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: OffersCarouselAndCategories()),
            SliverToBoxAdapter(child: PopularProducts()),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding * 1.5),
              sliver: SliverToBoxAdapter(child: FlashSale()),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  //BannerMSkelton(),
                  BannerSStyle1(
                    title: "New \narrival",
                    subtitle: "SPECIAL OFFER",
                    discountParcent: 50,
                    press: () {
                      Navigator.pushNamed(context, onSaleScreenRoute);
                    },
                  ),
                  SizedBox(height: defaultPadding / 4),
                ],
              ),
            ),
            SliverToBoxAdapter(child: BestSellers()),
            SliverToBoxAdapter(child: MostPopular()),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: defaultPadding * 1.5),
                  SizedBox(height: defaultPadding / 4),
                  // While loading use 👇
                  // const BannerSSkelton(),
                  BannerSStyle5(
                    title: "Black \nfriday",
                    subtitle: "50% Off",
                    bottomText: "Collection".toUpperCase(),
                    press: () {
                      Navigator.pushNamed(context, onSaleScreenRoute);
                    },
                  ),
                  SizedBox(height: defaultPadding / 4),
                ],
              ),
            ),
            SliverToBoxAdapter(child: BestSellers()),
          ],
        ),
      ),
    );
  }
}
