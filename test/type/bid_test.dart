import 'package:activity_one/type/bid.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Increse 100 times', () {
    final Bid bid = Bid();

    for (var i = 0; i < 100; i++) {
      bid.increment();
    }

    expect(bid.value >= 0, true);
  });

  test('Decrement 100 times', () {
    final Bid bid = Bid();

    for (var i = 0; i < 100; i++) {
      bid.decrement();
    }

    expect(bid.value == 0, true);
  });

  test('Increment and Decrement', () {
    final Bid bid = Bid();

    bid.increment();
    bid.increment();
    bid.increment();

    expect(bid.value, 150);

    bid.decrement();
    bid.decrement();

    expect(bid.value, 50);
  });
}