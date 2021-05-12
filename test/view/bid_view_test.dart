import 'package:activity_one/main.dart';
import 'package:activity_one/view/bid_view.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Has bid text', (WidgetTester tester) async {
    await tester.pumpWidget(App());
    expect(find.textContaining('My Maximum Bid'), findsOneWidget);
  });

  testWidgets('Has bid value', (WidgetTester tester) async {
    await tester.pumpWidget(App());
    expect(find.textContaining('0.0'), findsOneWidget);
  });

  testWidgets('Has bid increase button', (WidgetTester tester) async {
    await tester.pumpWidget(App());
    expect(find.text('Increase Bid'), findsOneWidget);
  });

  testWidgets('Has not bid decrease button with value 0', (WidgetTester tester) async {
    await tester.pumpWidget(App());
    expect(find.text('Decrease Bid'), findsNothing);
  });
}