import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_style_templates.dart';

class SightCard extends StatelessWidget {
  static const Radius _defaultCircularRadius = Radius.circular(10);

  static const EdgeInsets _paddingPositioned = EdgeInsets.all(15);

  static const BorderRadius _radiusOfTLR = BorderRadius.only(
    topLeft: _defaultCircularRadius,
    topRight: _defaultCircularRadius,
  );

  static const BorderRadius _radiusOfBLR = BorderRadius.only(
    bottomLeft: _defaultCircularRadius,
    bottomRight: _defaultCircularRadius,
  );

  final Sight _sight;

  SightCard({Key? key, required Sight sight})
      : _sight = sight,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: _radiusOfTLR,
              child: Stack(
                textDirection: TextDirection.ltr,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          _sight.url,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 1,
                    right: 1,
                    child: IconButton(
                      padding: _paddingPositioned,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 1,
                    left: 1,
                    child: Padding(
                      padding: _paddingPositioned,
                      child: Text(
                        _sight.type,
                        style: TextStyleTemplates.placeTypeTitle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: _radiusOfBLR,
                color: Colors.grey[300],
              ),
              child: ListTile(
                title: Text(
                  _sight.name,
                  style: TextStyleTemplates.interestingPlaceTitle,
                ),
                subtitle: const Text(
                  AppStrings.shortDescription,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
