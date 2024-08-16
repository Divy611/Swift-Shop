import '../../../../constants.dart';
import 'package:flutter/material.dart';
import 'package:swiftshop/models/product_model.dart';
import 'package:swiftshop/routes/screen_export.dart';
import 'package:swiftshop/components/product/secondary_product_card.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 2),
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Text(
            "Most popular",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        // SeconderyProductsSkelton(),
        SizedBox(
          height: 114,
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
              child: SecondaryProductCard(
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
