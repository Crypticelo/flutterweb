import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterweb/constants.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          print("get started pressed");
        },
        child: Material(
          elevation: 6,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: primaryDark,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: const Text(
                "Get Started",
                style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 15,
                    color: textPrimaryDark),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
