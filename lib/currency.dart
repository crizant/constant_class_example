enum Currency {
  usd(
    name: 'United States dollar',
    abbreviation: 'USD',
    symbol: '\$',
  ),
  gbp(
    name: 'Great British Pound',
    abbreviation: 'GBP',
    symbol: '£',
  ),
  jpy(
    name: 'Japanese Yen',
    abbreviation: 'JPY',
    symbol: '¥',
  );

  final String name;
  final String abbreviation;
  final String symbol;

  const Currency({
    required this.name,
    required this.abbreviation,
    required this.symbol,
  });
}
