import 'package:flutter_test/flutter_test.dart';

import 'package:mudra/main.dart';

void main() {
  testWidgets('Mudra loads the main navigation', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    expect(find.text('Good Afternoon!'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Invest'), findsOneWidget);
    expect(find.text('Move'), findsOneWidget);
    expect(find.text('Portfolio'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });

  testWidgets('bottom navigation opens the invest screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    await tester.tap(find.text('Invest'));
    await tester.pump();

    expect(find.text("You're just a click away!"), findsOneWidget);
    expect(find.text('Search name or symbol'), findsOneWidget);
  });
}
