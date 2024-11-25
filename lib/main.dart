import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class FunctionCalculator {
  int calculate(int x) {
    return 8 - x * x - x * x * x;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Function Calculator App',
      home: FunctionScreen(),
    );
  }
}

class FunctionScreen extends StatefulWidget {
  @override
  _FunctionScreenState createState() => _FunctionScreenState();
}

class _FunctionScreenState extends State<FunctionScreen> {
  int _counter = 0;
  final FunctionCalculator calculator = FunctionCalculator();

  void _incrementCounter() {
    setState(() {
      _counter += 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IPZ-31: Arsen\'s Sobipan Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter: $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Function result: ${calculator.calculate(_counter)}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.camera_alt_outlined),
      ),
    );
  }
}
