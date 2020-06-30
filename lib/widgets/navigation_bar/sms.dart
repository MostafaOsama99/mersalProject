import 'package:flutter/material.dart';
import 'package:mersal/widgets/donate_button.dart';
import 'amount_field.dart';

class SmsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Card(
            margin: const EdgeInsets.all(0),
            elevation: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 3),
                  child: Image.asset('Images/nav_icons/sms2.png',height: 35,width: 35,),
                ),
                Text(' 1 SMS costs 5LE',style: TextStyle(fontSize: 18),)
              ],
            ),
          ),

//          AmountField(
//            label: 'sms test',
//            image: 'Images/nav_icons/sms2.png',
//          ),

          //TODO: solve Spacer Error,
          //TODO: why parent widget (Column) must have fixed size ?
          //TODO: LayoutBuilder not working here
          //      Spacer(),

          SizedBox(height: 50),

          SizedBox(
              width: 50,
              height: 50,
              child: FittedBox(child: DonateButton(() {}, 'Donate NOW'))),
        ],
      ),
    );
  }
}
