import 'package:flutter/material.dart';
import 'package:swiftshop/constants.dart';
import 'package:swiftshop/routes/screen_export.dart';

class AddedToCartMessageScreen extends StatelessWidget {
  const AddedToCartMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                Theme.of(context).brightness == Brightness.light
                    ? "assets/Illustration/success.png"
                    : "assets/Illustration/success_dark.png",
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Spacer(flex: 2),
              Text(
                "Added to cart",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: defaultPadding / 2),
              Text(
                "Click the checkout button to complete the purchase process.",
                textAlign: TextAlign.center,
              ),
              Spacer(flex: 2),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, entryPointScreenRoute);
                },
                child: Text("Continue Shopping"),
              ),
              SizedBox(height: defaultPadding),
              ElevatedButton(
                onPressed: () {},
                child: Text("Checkout"),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
