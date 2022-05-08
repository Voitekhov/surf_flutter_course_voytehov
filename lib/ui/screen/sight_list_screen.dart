import 'package:flutter/material.dart';
import 'package:places/ui/res/resources.dart';

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
      body: Container(
        color: AppColors.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Some text'),
            TextField(),
          ],
        ),
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
