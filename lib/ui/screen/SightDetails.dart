import 'package:flutter/material.dart';
import 'package:places/ui/res/app_colors.dart';
import 'package:places/ui/res/text_style_templates.dart';

class SightDetails extends StatelessWidget {
  static const EdgeInsets _paddingLR = EdgeInsets.only(left: 15, right: 15);
  static const EdgeInsets _paddingInButtonElement =
      EdgeInsets.only(left: 1.5, right: 1.5);

  SightDetails({Key? key}) : super(key: key);

  final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.grey,
    elevation: 0,
  );

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
                    title: const Text(
                      'Пряности и радости',
                      style: TextStyleTemplates.title,
                    ),
                    subtitle: Row(
                      children: const [
                        Text(
                          'ресторан',
                          style: TextStyleTemplates.blackBoldText,
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'закрыто до 09:00',
                          style: TextStyleTemplates.robotoFamily,
                        ),
                        Spacer(flex: 14),
                      ],
                    ),
                  ),
                  const Text(
                    'Пряный вкус радостной жизни вместе с шеф-повором Изо Дзандзава,'
                    ' благодаря которой у гостей ресторана есть возможность выбирать из двух направлений:'
                    ' европейского и восточного',
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
                        children: const [
                          Padding(
                            padding: _paddingInButtonElement,
                            child: Icon(Icons.route_outlined),
                          ),
                          Padding(
                            padding: _paddingInButtonElement,
                            child: Text(
                              'ПОСТРОИТЬ МАРШРУТ',
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
                                'Запланировать',
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
                                'В избранное',
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
