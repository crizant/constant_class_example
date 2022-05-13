import 'package:flutter/material.dart';
import 'currency.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Currency? _currency;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30.0,
            ),
            DropdownButton<Currency>(
              hint: Text('Please choose a currency.'),
              value: _currency,
              isExpanded: true,
              items: Currency.values.map((currency) {
                return DropdownMenuItem(
                  child: Text(currency.name),
                  value: currency,
                );
              }).toList(),
              onChanged: (Currency? currency) {
                setState(() {
                  _currency = currency;
                });
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            if (_currency != null) ...[
              Text('The currency you have chosen is ${_currency!.name},'),
              Text('the abbreviation is ${_currency!.abbreviation},'),
              Text('the symbol is ${_currency!.symbol}.'),
            ],
            const SizedBox(
              height: 20.0,
            ),
            if (_currency == Currency.gbp)
              Text(
                '🇬🇧',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 100.0,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
