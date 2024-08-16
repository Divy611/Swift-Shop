import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../skelton.dart';

class SeconderyProductSkelton extends StatelessWidget {
  const SeconderyProductSkelton({
    super.key,
    this.isSmall = false,
    this.padding = const EdgeInsets.all(defaultPadding / 2),
  });

  final bool isSmall;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: 114,
      width: 256,
      child: Row(
        children: [
          const AspectRatio(
            aspectRatio: 1.15,
            child: Skeleton(),
          ),
          SizedBox(width: defaultPadding / 2),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Skeleton(
                    height: 12,
                    width: 80,
                  ),
                  Spacer(),
                  Skeleton(),
                  if (!isSmall) SizedBox(height: defaultPadding / 2),
                  if (!isSmall) const Skeleton(),
                  Spacer(),
                  Skeleton(
                    width: 40,
                    height: 12,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
