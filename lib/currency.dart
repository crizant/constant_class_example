import 'package:flutter/foundation.dart';

class Currency {
  final String name;
  final String abbreviation;
  final String symbol;

  // use private constructor so that we can only create
  // instances inside the class;
  // the `const` keyword of constructor makes every instance
  // initialized with the same parameters the same copy,
  // so that we can compare them by `==` or `switch` statements
  const Currency._({
    @required this.name,
    @required this.abbreviation,
    @required this.symbol,
  });

  static const Currency usd = Currency._(
    name: 'United States dollar',
    abbreviation: 'USD',
    symbol: '\$',
  );

  static const Currency gbp = Currency._(
    name: 'Great British Pound',
    abbreviation: 'GBP',
    symbol: '£',
  );

  static const Currency jpy = Currency._(
    name: 'Japanese Yen',
    abbreviation: 'JPY',
    symbol: '¥',
  );

  // put the values into an array so that we can iterate amoung them
  static const List<Currency> values = [usd, gbp, jpy];
}
