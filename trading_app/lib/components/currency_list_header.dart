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
      trailing: SizedBox(
        height: 100,
        width: 100,
        child: Row(
          children: [
            Text(
              "Sell",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            Spacer(),
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
