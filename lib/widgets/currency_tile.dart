import 'package:cook_app/models/currency.dart';
import 'package:flutter/material.dart';

class CurrencyTile extends StatelessWidget {
  const CurrencyTile({ 
    Key? key,
    required this.currency,
    this.onTap
  }) : super(key: key);

  final Currency currency;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(currency.name),
      subtitle: Text(currency.ticker),
      onTap: onTap,
    );
  }
}