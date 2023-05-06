import 'package:flutter/material.dart';
import 'package:trading_app/models/currency.dart';

class CurrencyTile extends StatelessWidget {
   CurrencyTile({super.key, required this.currrency});

  final Currrency currrency;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(currrency.name,
      style: TextStyle(fontWeight: FontWeight.w300),),
      subtitle: Text("${currrency.percent.toString()} %",
      style: TextStyle(fontWeight: FontWeight.bold , color: Colors.green),),
      trailing: SizedBox(
        height: 100,
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(currrency.sell.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
            Spacer(),
          Text(currrency.buy.toString(), style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}