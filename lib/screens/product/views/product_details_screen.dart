import 'product_buy_now_screen.dart';
import 'components/product_info.dart';
import 'package:flutter/material.dart';
import 'components/notify_me_card.dart';
import 'components/product_images.dart';
import 'package:swiftshop/constants.dart';
import 'components/product_list_tile.dart';
import '../../../components/review_card.dart';
import 'package:swiftshop/routes/screen_export.dart';
import 'package:swiftshop/components/cart_button.dart';
import 'package:swiftshop/components/product/product_card.dart';
import 'package:swiftshop/components/custom_modal_bottom_sheet.dart';
import 'package:swiftshop/screens/product/views/product_returns_screen.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.brandName,
    this.isProductAvailable = true,
  });
  final String image;
  final String title;
  final double price;
  final String brandName;
  final bool isProductAvailable;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: isProductAvailable
          ? CartButton(
              price: 140,
              press: () {
                customModalBottomSheet(
                  context,
                  child: ProductBuyNowScreen(),
                  height: MediaQuery.of(context).size.height * 0.92,
                );
              },
            )
          : NotifyMeCard(
              isNotify: false,
              onChanged: (value) {},
            ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              floating: true,
              actions: [
                //IconButton(
                //  onPressed: () {},
                //  icon: SvgPicture.asset("assets/icons/Bookmark.svg"),
                //),
              ],
            ),
            ProductImages(
              images: [productDemoImg1, productDemoImg2, productDemoImg3],
            ),
            ProductInfo(
              brand: brandName,
              title: title,
              isAvailable: isProductAvailable,
              description: "A cool gray cap in soft corduroy.",
              rating: 4.5,
              numOfReviews: 125,
            ),
            ProductListTile(
              svgSrc: "assets/icons/Product.svg",
              title: "Product Details",
              press: () {
                customModalBottomSheet(
                  context,
                  height: MediaQuery.of(context).size.height * 0.92,
                  child: Container(),
                );
              },
            ),
            ProductListTile(
              svgSrc: "assets/icons/Delivery.svg",
              title: "Shipping Information",
              press: () {
                customModalBottomSheet(
                  context,
                  height: MediaQuery.of(context).size.height * 0.92,
                  child: Container(),
                );
              },
            ),
            ProductListTile(
              svgSrc: "assets/icons/Return.svg",
              title: "Returns",
              isShowBottomBorder: true,
              press: () {
                customModalBottomSheet(
                  context,
                  height: MediaQuery.of(context).size.height * 0.92,
                  child: ProductReturnsScreen(),
                );
              },
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: ReviewCard(
                  rating: 4.3,
                  numOfTwoStar: 4,
                  numOfOneStar: 1,
                  numOfFourStar: 30,
                  numOfFiveStar: 80,
                  numOfThreeStar: 5,
                  numOfReviews: 125,
                ),
              ),
            ),
            ProductListTile(
              svgSrc: "assets/icons/Chat.svg",
              title: "Reviews",
              isShowBottomBorder: true,
              press: () {
                Navigator.pushNamed(context, productReviewsScreenRoute);
              },
            ),
            SliverPadding(
              padding: EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "You may also like",
                  style: Theme.of(context).textTheme.titleSmall!,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 220,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      left: defaultPadding,
                      right: index == 4 ? defaultPadding : 0,
                    ),
                    child: ProductCard(
                      image: productDemoImg2,
                      title: "Sleeveless Tiered Dobby Swing Dress",
                      brandName: "LIPSY LONDON",
                      price: 25,
                      priceAfterDiscount: index.isEven ? 20.99 : null,
                      discountpercent: index.isEven ? 25 : null,
                      press: () {
                        //       Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => ProductDetailsScreen(
                        //       image: demoPopularProducts[index].image,
                        //       title: demoPopularProducts[index].title,
                        //       price: demoPopularProducts[index].price,
                        //       brandName: demoPopularProducts[index].brandName,
                        //     ),
                        //   ),
                        // );
                      },
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: defaultPadding),
            )
          ],
        ),
      ),
    );
  }
}
