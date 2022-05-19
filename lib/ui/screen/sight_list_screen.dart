import 'package:flutter/material.dart';
import 'package:places/ui/screen/CustomAppBar.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/mocks.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.createAppBarUsingPreferredSize(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return AspectRatio(
              aspectRatio: 3 / 2,
              child: SightCard(sight: MockData.sights[index]));
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
