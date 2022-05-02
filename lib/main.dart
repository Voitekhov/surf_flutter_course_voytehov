import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: MyFirstStatelessWidget());
  }
}

class MyFirstStatelessWidget extends StatelessWidget {
  int _countBuildCall = 0;

  @override
  Widget build(BuildContext context) {
    print('build MyFirstStatelessWidget ${++_countBuildCall} ');
    return Container(
      child: const Center(
        child: Text('Hello!'),
      ),
    );
  }
}

class MyFirstStatefulWidget extends StatefulWidget {
  const MyFirstStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyFirstStatefulWidgetState createState() => _MyFirstStatefulWidgetState();
}

class _MyFirstStatefulWidgetState extends State<MyFirstStatefulWidget> {
  int _countBuildCall = 0;

  @override
  Widget build(BuildContext context) {
    print('build MyFirstStatefulWidget ${++_countBuildCall} ');
    return Container(
      child: const Center(
        child: Text('Hello!'),
      ),
    );
  }
}
