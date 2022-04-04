import 'package:cook_app/data.dart';
import 'package:cook_app/screens/currency_screen.dart';
import 'package:cook_app/widgets/currency_tile.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({ 
    Key? key,
    this.onTap 
  }) : super(key: key);

  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (ctx, index) {
          return CurrencyTile(
            currency: currencies[index],
            onTap: onTap != null ? () => onTap!(index) : () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return CurrencyScreen(currency: currencies[index],);
              }));
            },
          );
        },
        shrinkWrap: true
      ),
    );
  }
}