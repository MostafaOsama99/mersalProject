import 'package:flutter/material.dart';
import '../../Screens/donation_sheet.dart' show height;

class AmountField extends StatefulWidget {
  double amount;

  AmountField(this.amount);

  @override
  _AmountFieldState createState() => _AmountFieldState();
}

class _AmountFieldState extends State<AmountField> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(0),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: SizedBox(
              width: 40,
              child: Center(
                  child: Image.asset(
                'Images/nav_icons/amount.png',
                width: 35,
                height: 35,
              ))),
          title: TextFormField(
            onTap: () => height = 0.7,
            onEditingComplete: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
              height = 0.55;
            },
         //   onFieldSubmitted: (_) => height = 0.55,

            validator: (val) {
              if (double.tryParse(val) == null) return 'invalid amount';
              var value = double.parse(val);
              if (10 > value) return "amount shouldn't be smaller than 10";
              if (value > 3000) return 'too mach for single transaction';
              return null;
            },
            onSaved: (value) {
              widget.amount = double.parse(value);
            },
            keyboardType: TextInputType.number,
            //textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 10, left: 20),
              hintText: '0',
              labelStyle: TextStyle(color: Colors.black),
              labelText: 'Amount',
              //  labelStyle: TextStyle(color: Colors.green.shade600),
              hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal)),
            ),
          ),
        ));
  }
}
