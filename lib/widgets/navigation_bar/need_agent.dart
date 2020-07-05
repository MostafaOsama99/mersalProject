import 'package:flutter/material.dart';
import 'package:mersal/widgets/donate_button.dart';
import 'amount_field.dart';

//TODO: if now address disable donate button
//TODO: implement add address dialogue according to demoData.dart-> userData[of single address ]

class NeedAgentBody extends StatefulWidget {
  final List<Map<String, String>> address;

  NeedAgentBody(this.address);

  @override
  _NeedAgentBodyState createState() => _NeedAgentBodyState();
}

class _NeedAgentBodyState extends State<NeedAgentBody> {
  final _formKey = GlobalKey<FormState>();
  double amount;

  _saveForm() {
    if (!_formKey.currentState.validate()) return;
    _formKey.currentState.save();
    print(amount);
  }

  @override
  Widget build(BuildContext context) {
    int selectedAddress = 0;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Form(key: _formKey, child: AmountField(amount)),
            SizedBox(height: 15),
            FlatButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                if (widget.address.length == 0)
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 12),
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
                          widget.address.length == 0
                              ? 'add address !'
                              : widget.address[selectedAddress]
                                      ['city_${selectedAddress + 1}, '] +
                                  widget.address[selectedAddress]
                                      ['area_${selectedAddress + 1}, '] +
                                  widget.address[selectedAddress]
                                      ['street_${selectedAddress + 1}'],
                          style: widget.address.length == 0
                              ? TextStyle(color: Colors.red)
                              : TextStyle(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(flex: 3),
            SizedBox(
                height: 50,
                child: FittedBox(child: DonateButton(_saveForm, 'Donate NOW'))),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
