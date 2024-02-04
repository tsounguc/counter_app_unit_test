import 'package:counter_app_unit_test/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
      'given counter is 0 when increment button is clicked then counter should be 1',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: MyHomePage(
          title: 'Counter App',
        ),
      ),
    );
    final counter = find.text('0');
    expect(counter, findsOneWidget);

    final counter2 = find.text('1');
    expect(counter2, findsNothing);
    
    final incrementBtn = find.byKey(const Key('increment_counter'));
    await tester.tap(incrementBtn);

    await tester.pump();

    final counter3 = find.text('1');
    expect(counter3, findsOneWidget);

    final counter4 = find.text('0');
    expect(counter4, findsNothing);

    expect(find.byType(AppBar), findsOneWidget);

  });
}
