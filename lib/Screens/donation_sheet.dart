import 'package:flutter/material.dart';
import 'package:mersal/models/nav_tab_data.dart';

import '../widgets/navigation_bar/nav_body.dart';
import '../models/nav_body_data.dart';
import '../widgets/navigation_bar/navigation_widget.dart';

startDonate(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return DonationSheet();
      });
}

class DonationSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'Images/donatee.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(width: 15),
                Text(
                  "Donate",
                  style: const TextStyle(color: Colors.teal, fontSize: 35),
                ),
              ],
            ),
            SizedBox(
              width: 160,
              child: Divider(
                height: 20,
                color: Colors.grey,
              ),
            ),

            NavigationWidget(
              activeColor: Colors.teal,
              inactiveColor: Colors.grey,
              tabsData: [
                NavTabData('Images/sms.png', 'SMS'),
                NavTabData('Images/nav_icons/credit-card.png', 'Bank Card'),
                NavTabData('Images/nav_icons/mandob.png', 'Need an agent')
              ],
              body: [
                NavBody(
                  data: [
                    NavBodyData(
                        image: 'Images/nav_icons/cat.png',
                        title: ' 1 sms costs you 5 LE'),
                  ],
                  donateButton: () {},
                ),

///fell free to text your text field here
//                TextField(
//                  keyboardType: TextInputType.number,
//                ),
                NavBody(
                  data: [
                    NavBodyData(image: "Images/nav_icons/amount.png", title: 'Amount'),
                  ],
                  donateButton: () {},
                ),
                NavBody(
                  data: [
                    NavBodyData(
                      image: "Images/nav_icons/amount.png",
                      title: "Amount",
                    ),
                    NavBodyData(
                      image: "Images/nav_icons/address.png",
                      title: "Choose your address",
                    ),
                  ],
                  donateButton: () => modal1.mainBottomSheet(context),
                ),
              ],
            ),
            Spacer(flex: 2),

//                Row(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: [
//                    navTap(
//                        id: 0,
//                        text: "SMS",
//                        image: "Images/sms.png",
//                        data: NavBody(data: [
//                          NavBodyData(
//                              image: 'Images/cat.png',
//                              title: 'Choose a Charitable activity')
//                        ])), // smsData()),
//                    navTap(
//                        id: 1,
//                        text: "Credit Card",
//                        image: "Images/credit-card.png",
//                        data: NavBody(data: [
//                          NavBodyData(
//                              image: "Images/amount.png", title: 'Amount')
//                        ])), //creditCardData()),
//                    navTap(
//                      id: 2,
//                      //case u don't like it make it 'Request an \nagent'
//                      text: "Need agent !",
//
//                      image: "Images/mandob.png",
//                      data: NavBody(data: [
//                        NavBodyData(
//                          image: "Images/cat.png",
//                          title: "Choose a charitable activity",
//                        ),
//                        NavBodyData(
//                          image: "Images/amount.png",
//                          title: "Amount",
//                        ),
//                        NavBodyData(
//                          image: "Images/address.png",
//                          title: "Choose your address",
//                        )
//                      ], donateButton: () => modal1.mainBottomSheet(context)),
//                    ) //agentData()),
//                  ],
//                ),
//                content
          ],
        ),
    );
  }
}

//  Widget navTap({String text, String image, @required int id, Widget data}) {
//    return Flexible(
//      fit: FlexFit.tight,
//      flex: choose == id ? 5 : 4,
//      child: FlatButton(
//        padding: const EdgeInsets.all(8),
//        onPressed: () {
//          setState(() {
//            choose = id;
//            content = data;
//          });
//        },
//        child: SizedBox(
//          height: 85, //to avoid vertical motion while switching
//          child: Column(
//            children: [
//              CircleAvatar(
//                backgroundColor: choose == id ? activeColor : notActiveColor,
//                radius: choose == id ? 25 : 19,
//                child: Image.asset(
//                  image,
//                  width: choose == id ? 35 : 25,
//                  height: 30,
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.only(top: 8),
//                child: FittedBox(
//                  fit: BoxFit.fitWidth,
//                  child: Text(
//                    text,
//                    textAlign: TextAlign.center,
//                    style: choose == id
//                        ? TextStyle(color: Colors.teal, fontSize: 21)
//                        : TextStyle(color: Colors.grey, fontSize: 18),
//                  ),
//                ),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

Modal2 modal1 = new Modal2();

class Modal2 {
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: 400,
            height: 180,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Treat a Patient",
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Spacer(flex: 1),
                  Text(
                    "Well Drilling",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(color: Colors.grey),
                  Spacer(flex: 1),
                  Text(
                    "Care for the eldely",
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(color: Colors.grey),
                  Spacer(flex: 1),
                  Text(
                    "Feeding poor",
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(color: Colors.grey),
                ],
              ),
            ),
          );
        });
  }
}
