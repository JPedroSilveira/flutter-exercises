import 'package:activity_one/components/text_icon_button.dart';
import 'package:activity_one/type/bid.dart';
import 'package:flutter/material.dart';

class BidView extends StatefulWidget {
  BidView({Key? key}) : super(key: key);

  @override
  _BidViewState createState() => _BidViewState();
}

class _BidViewState extends State<BidView> {
  Bid bid = Bid();

  void _increaseBid() {
    setState(bid.increment);
  }

  void _decreaseBid() {
    setState(bid.decrement);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'My Maximum Bid: ${bid.toString()}',
          ),
          SizedBox(height: 7),
          textIconButton(
              onPressed: _increaseBid,
              text: 'Increase Bid',
              icon: Icons.add_circle),
          SizedBox(height: 7),
          if (bid.canDecrement())
            textIconButton(
                onPressed: _decreaseBid,
                text: 'Decrease Bid',
                icon: Icons.remove_circle),
        ],
      ),
    );
  }
}