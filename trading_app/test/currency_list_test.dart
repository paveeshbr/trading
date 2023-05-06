import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trading_app/components/currency_list_header.dart';
import 'package:trading_app/data/currency_data.dart';
import 'package:trading_app/screens/currency_list_screen.dart';

void main() {
  group("Currency List Screen test", () {
    testWidgets('Currency List header loaded', (tester) async {
      await tester.pumpWidget(MaterialApp(home: CurrencyListScreen()));

      final headerTitleFinder = find.text('Title/ Change (1D)');
      final headerTitleSellFinder = find.text('Sell');
      final headerTitleBuyFinder = find.text('Buy');
      expect(headerTitleFinder, findsOneWidget);
      expect(headerTitleSellFinder, findsOneWidget);
      expect(headerTitleBuyFinder, findsOneWidget);
    });

    testWidgets('Currency List loaded', (tester) async {
      CurrrencyData currency_data = CurrrencyData();
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(home: CurrencyListScreen()));

      final listFinder = find.byType(Scrollable);
      final itemFinder = find.byType(SliverList);

      // Scroll until the item to be found appears.
      await tester.scrollUntilVisible(
        itemFinder,
        currency_data.currencies.length.toDouble(),
        scrollable: listFinder,
      );

      // Verify that the item contains the correct text.
      expect(itemFinder, findsOneWidget);
    });
  });
}
