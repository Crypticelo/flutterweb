import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterweb/constants.dart';
import 'package:routemaster/routemaster.dart';

class MenuItemNew extends StatelessWidget {
  final String text;
  final String path;
  final bool inDrawer;
  const MenuItemNew(
      {Key? key,
      required this.inDrawer,
      required this.text,
      required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Routemaster.of(context).push(path);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontFamily: fontFamily,
              color: inDrawer ? textPrimaryDark : textPrimaryLight,
            ),
          ),
        ),
      ),
    );
  }
}
