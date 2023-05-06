import 'package:flutter/material.dart';
import 'package:trading_app/components/currency_list_header.dart';
import 'package:trading_app/data/currency_data.dart';
import '../components/currency_tile.dart';

class CurrencyListScreen extends StatelessWidget {
  CurrencyListScreen({super.key});
  final CurrrencyData currrencyData = CurrrencyData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white10,
      child: CustomScrollView(
        slivers: [
          // Add the app bar to the CustomScrollView.
          const SliverAppBar(
            backgroundColor: Colors.white,
            title: CurrencyHeader(),
            forceElevated: true,
            elevation: 5,
            floating: true,
            stretch: true,
            pinned: true,
            expandedHeight: 0,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => CurrencyTile(
                currrency: currrencyData.currencies[index],
              ),
            
            childCount: currrencyData.currencies.length,
            )
          ),
        ],
      ),
    ));
  }
}
