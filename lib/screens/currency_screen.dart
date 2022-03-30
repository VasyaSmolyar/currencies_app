import 'package:cook_app/models/currency.dart';
import 'package:cook_app/widgets/currency_detail.dart';
import 'package:flutter/material.dart';

class CurrencyScreen extends StatelessWidget {
  const CurrencyScreen({ 
    Key? key,
    required this.currency  
  }) : super(key: key);

  final Currency currency;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currency.ticker),
      ),
      body: CurrencyDetail(currency: currency)
    );
  }
}