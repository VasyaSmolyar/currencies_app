import 'package:cook_app/models/currency.dart';
import 'package:flutter/material.dart';

class CurrencyDetail extends StatelessWidget {
  const CurrencyDetail({ 
    Key? key,
    required this.currency 
  }) : super(key: key);

  final Currency currency;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.center,
            child: Column(
              children: [
                Text(currency.name),
                Text(currency.ticker),
                Image.asset(currency.imagePath),
              ],
            ),
          ),
        ]
      ),
    );
  }
}