import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multiplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _num1 = 1;
  int _num2 = 1;
  int _result = 1;

  void _calculateResult() {
    setState(() {
      _result = _num1 * _num2;
    });
  }

  void _incrementNum1() {
    setState(() {
      _num1++;
    });
    _calculateResult();
  }

  void _decrementNum1() {
    setState(() {
      _num1--;
    });
    _calculateResult();
  }

  void _incrementNum2() {
    setState(() {
      _num2++;
    });
    _calculateResult();
  }

  void _decrementNum2() {
    setState(() {
      _num2--;
    });
    _calculateResult();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiplicación'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: _decrementNum1,
                  icon: Icon(Icons.remove),
                ),
                Text(
                  '$_num1',
                  style: Theme.of(context).textTheme.headline4,
                ),
                IconButton(
                  onPressed: _incrementNum1,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: _decrementNum2,
                  icon: Icon(Icons.remove),
                ),
                Text(
                  '$_num2',
                  style: Theme.of(context).textTheme.headline4,
                ),
                IconButton(
                  onPressed: _incrementNum2,
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              '$_result',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
