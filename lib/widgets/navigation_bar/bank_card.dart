import 'package:flutter/material.dart';
import 'package:mersal/widgets/donate_button.dart';
import 'amount_field.dart';

class BankCardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AmountField(
            label: 'Amount',
            image: 'Images/nav_icons/amount.png',
          ),

          //TODO: solve Spacer Error,
          //TODO: why parent widget (Column) must have fixed size ?
          //TODO: LayoutBuilder not working here
          //      Spacer(),

          SizedBox(height: 50),

          SizedBox(
              height: 50,
              child: FittedBox(child: DonateButton(() {}, 'Donate NOW'))),
        ],
      ),
    );
  }
}