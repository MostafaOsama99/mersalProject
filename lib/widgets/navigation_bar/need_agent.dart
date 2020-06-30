import 'package:flutter/material.dart';
import 'package:mersal/widgets/donate_button.dart';
import 'amount_field.dart';

//TODO: if now address disable donate button
//TODO: implement add address dialogue according to demoData.dart-> userData[of single address ]

class NeedAgentBody extends StatelessWidget {
  final List<Map<String, String>> address;

  NeedAgentBody(this.address);

  @override
  Widget build(BuildContext context) {
    int selectedAddress = 0;
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

          SizedBox(height: 15),

          FlatButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              if (address.length == 0)
                // add address ...
                return;
              else
                // switch address
                return;
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    spreadRadius: 0,
                    offset: Offset(1.0, 1.0),
                  )
                ],
                color: Colors.white,
                //   border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                    child: Image.asset(
                      'Images/nav_icons/address.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Text('Address:',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal)),
                  Expanded(
                    child: Center(
                      child: Text(
                        address.length == 0
                            ? 'add address !'
                            : address[selectedAddress]['city_${selectedAddress + 1}, '] +
                                address[selectedAddress]['area_${selectedAddress + 1}, '] +
                                address[selectedAddress]['street_${selectedAddress + 1}'],
                        style: address.length == 0
                            ? TextStyle(color: Colors.red)
                            : TextStyle(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //TODO: solve Spacer Error,
          //TODO: why parent widget (Column) must have fixed size ?
          //TODO: LayoutBuilder not working here
          //TODO: Expanded not working above column
          //      Spacer(),

          SizedBox(height: 20),

          SizedBox(
              height: 50,
              child: FittedBox(child: DonateButton(() {}, 'Donate NOW'))),
        ],
      ),
    );
  }
}
