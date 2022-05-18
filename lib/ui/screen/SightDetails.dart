import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/app_colors.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_style_templates.dart';

class SightDetails extends StatelessWidget {
  static const EdgeInsets _paddingLR = EdgeInsets.symmetric(horizontal: 15);

  static const EdgeInsets _paddingInButtonElement =
  EdgeInsets.symmetric(horizontal: 1.5);

  final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.grey,
    elevation: 0,
  );

  final Sight _sight;

  // ignore: use_key_in_widget_constructors
  SightDetails({required Sight sight}) : _sight = sight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Padding(
              padding: _paddingLR,
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    title: Text(
                      _sight.name,
                      style: TextStyleTemplates.title,
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          _sight.type,
                          style: TextStyleTemplates.blackBoldText,
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Text(
                          _sight.details,
                          style: TextStyleTemplates.robotoFamily,
                        ),
                        Spacer(flex: 14),
                      ],
                    ),
                  ),
                  Text(
                    _sight.details,
                    style: TextStyleTemplates.robotoFamily,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: _paddingInButtonElement,
                            child: Icon(Icons.route_outlined),
                          ),
                          Padding(
                            padding: _paddingInButtonElement,
                            child: Text(
                              AppStrings.buildRoute.toUpperCase(),
                              style: TextStyleTemplates.robotoFamily,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(color: Colors.grey),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: _buttonStyle,
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Padding(
                              padding: _paddingInButtonElement,
                              child: Icon(Icons.calendar_month),
                            ),
                            Padding(
                              padding: _paddingInButtonElement,
                              child: Text(
                                AppStrings.addToFavorite,
                                style: TextStyleTemplates.robotoFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: _buttonStyle,
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Padding(
                              padding: _paddingInButtonElement,
                              child: Icon(Icons.favorite_border),
                            ),
                            Padding(
                              padding: _paddingInButtonElement,
                              child: Text(
                                AppStrings.addToFavorite,
                                style: TextStyleTemplates.robotoFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
