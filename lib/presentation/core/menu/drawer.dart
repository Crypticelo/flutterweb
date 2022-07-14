import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterweb/constants.dart';
import 'package:flutterweb/presentation/core/buttons/get_started.dart';
import 'package:flutterweb/presentation/core/menu/flutter_home_logo.dart';
import 'package:flutterweb/presentation/core/menu/menu_item.dart';
import 'package:flutterweb/presentation/dev_page/dev_page.dart';
import 'package:flutterweb/presentation/eco_page/eco_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryDark,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const FlutterHomeLogo(),
                    const Spacer(),
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(
                          Icons.close,
                          color: textPrimaryDark,
                          size: 18,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const MenuItemNew(
                  text: "Docs",
                  inDrawer: true,
                  path: "",
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItemNew(
                  text: "Showcase",
                  inDrawer: true,
                  path: "",
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItemNew(
                  text: "Development",
                  inDrawer: true,
                  path: DevPage.devPagePath,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItemNew(
                  text: "Ecosystem",
                  inDrawer: true,
                  path: EcoPage.ecoPagePath,
                ),
              ],
            ),
            Column(
              children: const [
                Spacer(),
                GetStartedButton(
                  inDrawer: true,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
