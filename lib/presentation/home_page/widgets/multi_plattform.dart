import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterweb/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MultiPlatform extends StatelessWidget {
  const MultiPlatform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: background),
      child: ResponsiveRowColumn(
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        layout: responsiveValue.isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Multi-Platform",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontFamily: fontFamily,
                    fontSize: responsiveValue.isLargerThan(TABLET) ? 20 : 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Reach users on every screen",
                  style: TextStyle(
                    color: textPrimaryLight,
                    fontFamily: fontFamily,
                    fontSize: responsiveValue.isLargerThan(TABLET) ? 60 : 40,
                    height: 0.9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Deploy to multiple devices from a single codebase: mobile, web, desktop, and embedded devices.",
                  style: TextStyle(
                    color: textPrimaryLight,
                    fontFamily: fontFamily,
                    fontSize: responsiveValue.isLargerThan(TABLET) ? 20 : 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
