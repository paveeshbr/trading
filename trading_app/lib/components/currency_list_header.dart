import 'package:flutter/material.dart';

class CurrencyHeader extends StatelessWidget {
  const CurrencyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Text(
        'Title/ Change (1D)',
        style: TextStyle(fontWeight: FontWeight.w300),
      ),
      trailing: FittedBox(
          fit: BoxFit.none,
        child: Row(
          children: const [
            Text(
              "Sell",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            SizedBox(width: 10,),
            Text(
              "Buy",
              style: TextStyle(fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
