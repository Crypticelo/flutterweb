import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterweb/presentation/core/page_wrapper/page_template.dart';
import 'package:flutterweb/presentation/dev_page/widgets/dev_start.dart';

class DevPage extends StatelessWidget {
  static const String devPagePath = "/development";

  const DevPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partblocks = [
      const DevelopmentStart(),
    ];
    return PageTemplate(
      child: ListView.builder(
          itemCount: partblocks.length,
          itemBuilder: (context, index) {
            return partblocks[index];
          }),
    );
  }
}
