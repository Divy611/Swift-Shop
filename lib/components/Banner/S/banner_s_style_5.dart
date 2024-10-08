import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'banner_s.dart';

class BannerSStyle5 extends StatelessWidget {
  const BannerSStyle5({
    super.key,
    this.image = "https://i.imgur.com/wQ0sNHT.png",
    required this.title,
    required this.press,
    this.subtitle,
    this.bottomText,
  });
  final String? image;
  final String title;
  final String? subtitle, bottomText;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return BannerS(
      image: image!,
      press: press,
      children: [
        Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (subtitle != null)
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding / 2,
                            vertical: defaultPadding / 8),
                        color: Colors.white70,
                        child: Text(
                          subtitle!,
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    SizedBox(height: defaultPadding / 2),
                    Text(
                      title.toUpperCase(),
                      style: TextStyle(
                        fontFamily: grandisExtendedFont,
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        height: 1,
                      ),
                    ),
                    // SizedBox(height: defaultPadding / 4),
                    if (bottomText != null)
                      Text(
                        bottomText!,
                        style: TextStyle(
                          fontFamily: grandisExtendedFont,
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(width: defaultPadding),
              SvgPicture.asset(
                "assets/icons/miniRight.svg",
                height: 28,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
