import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FlutterHomeLogo extends StatelessWidget {
  const FlutterHomeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          print("logo tapped");
        },
        child: Image.asset(
          "assets/images/flutter_logo_text.png",
          height: 37,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
