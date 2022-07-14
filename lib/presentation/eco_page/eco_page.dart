import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterweb/presentation/core/page_wrapper/page_template.dart';
import 'package:flutterweb/presentation/eco_page/widgets/ecosystem.dart';

class EcoPage extends StatelessWidget {
  static const String ecoPagePath = "/ecosystem";
  const EcoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageTemplate(
      child: Ecosystem(),
    );
  }
}
