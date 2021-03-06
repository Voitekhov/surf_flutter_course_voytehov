import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui//res/strings.dart';
import 'package:places/ui/res/app_colors.dart';
import 'package:places/ui/res/text_style_templates.dart';
import 'package:places/ui/screen/sight_card.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            AppStrings.appBarTitle,
            style: TextStyleTemplates.appBar,
          ),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return SightCard(sight: MockData.sights[index]);
          },
          itemCount: MockData.sights.length,
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'personal'),
        ],
      ),
    );
  }
}
