import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyFirstStatefulWidget('Hi'),
    );
  }
}

class MyFirstStatelessWidget extends StatelessWidget {
  final String _title;

  const MyFirstStatelessWidget(this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(_title),
      ),
    );
  }
}

class MyFirstStatefulWidget extends StatefulWidget {
  final String _title;

  const MyFirstStatefulWidget(this._title);

  @override
  _MyFirstStatefulWidgetState createState() =>
      _MyFirstStatefulWidgetState(_title);
}

class _MyFirstStatefulWidgetState extends State<MyFirstStatefulWidget> {
  final String _title;

  _MyFirstStatefulWidgetState(this._title);

  @override
  Widget build(BuildContext context) {
    printContextRuntime();
    return Container(
      child: Center(
        child: Text(_title),
      ),
    );
  }

  void printContextRuntime() {
    print(context.runtimeType);
  }
}
