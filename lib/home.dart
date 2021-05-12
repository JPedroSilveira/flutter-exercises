import 'package:activity_one/components/app_bar.dart';
import 'package:activity_one/view/bid_view.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: widget.title),
      body: BidView()
    );
  }
}
