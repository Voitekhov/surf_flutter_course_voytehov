import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // to not resized screen when keyboard appears
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('App bar'),
      ),
      body: Column(
        // to demonstrate resize of screen
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Some text'),
          TextField(),
        ],
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
