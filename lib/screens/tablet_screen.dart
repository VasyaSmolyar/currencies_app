import 'package:cook_app/data.dart';
import 'package:cook_app/screens/mobile_screen.dart';
import 'package:cook_app/widgets/currency_detail.dart';
import 'package:flutter/material.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({ Key? key }) : super(key: key);

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
          child: MobileScreen(
            onTap: (index) {
              setState(() {
                page = index;
              });
            },
          ),
        ),
      ),
      Expanded(
        child: CurrencyDetail(
          currency: currencies[page],
        )
      ),
      ],
    );
  }
}