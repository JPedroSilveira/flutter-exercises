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
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Bid Demo Home Page'),
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
  double bid = 0;

  void _increaseBid() {
    setState(() {
      bid+= 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title, 
          style: TextStyle(fontWeight: FontWeight.bold), 
          textAlign: TextAlign.start, 
          textScaleFactor: 0.9
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'My Maximum Bid: ${bid.toStringAsFixed(1)}',
            ),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Row(
                    children: [
                      Icon(Icons.add_circle, color: Colors.black),
                      SizedBox(width: 7),
                      Text('Increase Bid', style: TextStyle(color: Colors.black)),
                     ],
                  ),
                  onPressed: _increaseBid
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
