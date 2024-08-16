import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
    required this.last4Digits,
    required this.name,
    required this.expiryDate,
    this.isSelected = false,
    this.press,
    this.bgColor = primaryColor,
  });

  final String last4Digits, name, expiryDate;
  final bool isSelected;
  final VoidCallback? press;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 2,
            child: Container(
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultBorderRadious * 2),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/card.svg",
                                height: 32,
                                width: 32,
                                colorFilter: ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
                              ),
                              if (isSelected)
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.all(defaultPadding / 4),
                                    child: SvgPicture.asset(
                                      "assets/icons/Singlecheck.svg",
                                      colorFilter: ColorFilter.mode(
                                          primaryColor, BlendMode.srcIn),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "**** **** **** $last4Digits",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: defaultPadding),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/Card_Pattern.svg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: EdgeInsets.all(defaultPadding),
                          child: DefaultTextStyle(
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name),
                                SizedBox(height: defaultPadding / 4),
                                Text(expiryDate)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isSelected) SizedBox(height: defaultPadding),
          if (isSelected)
            Form(
              child: TextFormField(
                validator: (value) {
                  return null;
                },
                onSaved: (cvv) {},
                keyboardType: TextInputType.number,
                maxLength: 4,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  hintText: "CVV",
                  counterText: "",
                  prefixIcon: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
                    child: SvgPicture.asset(
                      "assets/icons/CVV.svg",
                      colorFilter: ColorFilter.mode(
                          Theme.of(context)
                              .inputDecorationTheme
                              .hintStyle!
                              .color!,
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
            ),
          if (isSelected) SizedBox(height: defaultPadding / 2),
        ],
      ),
    );
  }
}
