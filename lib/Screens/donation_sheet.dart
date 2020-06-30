import 'package:flutter/material.dart';
import 'package:mersal/models/nav_tab_data.dart';

import '../widgets/navigation_bar/bank_card.dart';
import '../widgets/navigation_bar/need_agent.dart';
import '../widgets/navigation_bar/navigation_widget.dart';
import '../widgets/navigation_bar/sms.dart';


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

    //TODO: add SingleChildScrollView
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
              SmsBody(),
              BankCardBody(),
              NeedAgentBody([])
            ],
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}