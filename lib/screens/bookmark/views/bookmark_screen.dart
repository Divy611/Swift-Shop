import '../../../constants.dart';
import 'package:flutter/material.dart';
import 'package:swiftshop/routes/screen_export.dart';
import 'package:swiftshop/models/product_model.dart';
//import 'package:swiftshop/routes/route_constants.dart';
import 'package:swiftshop/components/product/product_card.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //BookMarksSlelton(),
          SliverPadding(
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: defaultPadding,
                crossAxisSpacing: defaultPadding,
                childAspectRatio: 0.66,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ProductCard(
                    image: demoPopularProducts[index].image,
                    brandName: demoPopularProducts[index].brandName,
                    title: demoPopularProducts[index].title,
                    price: demoPopularProducts[index].price,
                    priceAfterDiscount:
                        demoPopularProducts[index].priceAfterDiscount,
                    discountpercent: demoPopularProducts[index].discountpercent,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsScreen(
                            image: demoPopularProducts[index].image,
                            title: demoPopularProducts[index].title,
                            price: demoPopularProducts[index].price,
                            brandName: demoPopularProducts[index].brandName,
                          ),
                        ),
                      );
                    },
                  );
                },
                childCount: demoPopularProducts.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
