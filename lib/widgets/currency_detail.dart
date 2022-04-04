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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    currency.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    currency.ticker,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey
                    ),
                  ),
                ),
                Image.asset(
                  currency.imagePath,
                  height: 250,
                  fit:BoxFit.fill
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Цена: ${currency.price}',
                    style: const TextStyle(
                      fontSize: 20
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    currency.about,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ]
      ),
    );
  }
}