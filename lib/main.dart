import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.lightGreen.shade100,
      ),
      home: HomePage(title: 'Flutter Still Second Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter_button_1 = 0;
  int _counter_button_2 = 0;

  void _incrementCounterOne() {
    setState(() {
      _counter_button_1++;
    });
  }

  void _incrementCounterTwo() {
    setState(() {
      _counter_button_2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title, 
          style: TextStyle(fontWeight: FontWeight.bold), 
          textAlign: TextAlign.center, 
          textScaleFactor: 0.9
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button 1 this many times:',
            ),
            Text(
              '$_counter_button_1',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'You have pushed the button 2 this many times:',
            ),
            Text(
              '$_counter_button_2',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounterOne,
            tooltip: 'Increment One',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _incrementCounterTwo,
            tooltip: 'Increment Two',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
