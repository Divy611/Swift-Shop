import '../../../../constants.dart';
import 'package:flutter/material.dart';
import 'package:swiftshop/models/product_model.dart';
import 'package:swiftshop/routes/screen_export.dart';
import 'package:swiftshop/components/product/product_card.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 2),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Text(
            "Popular products",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        // const ProductsSkelton(),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: demoPopularProducts.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: defaultPadding,
                right: index == demoPopularProducts.length - 1
                    ? defaultPadding
                    : 0,
              ),
              child: ProductCard(
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
              ),
            ),
          ),
        )
      ],
    );
  }
}
