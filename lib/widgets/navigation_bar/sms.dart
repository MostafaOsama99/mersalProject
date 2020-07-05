import 'package:flutter/material.dart';
import 'package:mersal/widgets/donate_button.dart';

class SmsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(0),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: SizedBox(
                    width: 40,
                    child: Center(
                        child: Image.asset(
                      'Images/nav_icons/sms2.png',
                      width: 35,
                      height: 35,
                    ))),
                title: Text(
                  ' 1 SMS costs 5LE',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            Spacer(flex: 3),

            SizedBox(
                height: 50,
                child: FittedBox(child: DonateButton(() {}, 'Donate NOW'))),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
