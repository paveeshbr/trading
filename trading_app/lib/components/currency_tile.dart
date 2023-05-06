import 'package:flutter/material.dart';
import 'package:trading_app/models/currency.dart';

class CurrencyTile extends StatelessWidget {
  CurrencyTile({super.key, required this.currrency});

  final Currrency currrency;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        currrency.name,
        style: TextStyle(fontWeight: FontWeight.w300),
      ),
      subtitle: Text(
        "${currrency.percent.toString()} %",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
      ),
      trailing: FittedBox(
        fit: BoxFit.cover,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(currrency.sell.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
            SizedBox(
              width: 30,
            ),
            Text(
              currrency.buy.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
