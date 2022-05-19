import 'package:flutter/material.dart';

import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_style_templates.dart';

class MyAppBar {
  static PreferredSizeWidget createAppBarUsingPreferredSize() {
    return const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                AppStrings.appBarTitle,
                style: TextStyleTemplates.appBar,
              ),
            ),
        ));
  }
}
