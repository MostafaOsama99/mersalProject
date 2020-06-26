import 'package:flutter/material.dart';

import 'clickable_tile.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: SafeArea( //to avoid notifications bar
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ClickableTile(
              image: 'Images/drawer/home.png',
              title: "Home",
              onTap: () => navigate(context, "Mersal Home"),
            ),
            ClickableTile(
                image: 'Images/drawer/urgent.png',
                title: "Urgent cases",
                onTap: () => navigate(context, "/treat_patient/urgent")),
            ////////////////// mfesh Urgent
            ClickableTile(
                image: 'Images/drawer/chartiable.png',
                title: "Charitable activities",
                onTap: () => navigate(context, "Charitable")),
            ClickableTile(
                image: 'Images/drawer/heart.png',
                title: "My Donation",
                onTap: () => navigate(context, 'My Donation')),

            //////////////////// Msh 3arefha
            ClickableTile(image: 'Images/drawer/zakatek.png', title: "Pay zakat"),
            ClickableTile(
                image: 'Images/drawer/rate.png',
                title: "Rate the app",
                onTap: () => navigate(context, "Rate App")),
            /////////////////////
            ClickableTile(
                image: 'Images/drawer/settings.png',
                title: "Settings",
                onTap: () => navigate(context, 'Settings')),
            ClickableTile(
                image: 'Images/drawer/Info.png',
                title: "About Mersal",
                divider: false,
                onTap: () => navigate(context, "About Mersal")),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SocialMediaIcon(icon: 'Images/drawer/facebook.png'),
                      SocialMediaIcon(icon: 'Images/drawer/insta.png'),
                      SocialMediaIcon(icon: 'Images/drawer/youtube.png'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  final String icon;
  final Function onTap;


  const SocialMediaIcon({this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      iconSize: 30,
      onPressed: () => onTap(),
      icon: Image.asset(
        icon,
        width: 30,
        height: 30,
      ),
      // child: Image.asset(icon, width: 30, height: 30),
    );
  }
}

//here where you make navigating
navigate(final BuildContext context, final String route) {
  //TODO: manage Navigator errors
  Navigator.of(context).pop();
  Navigator.pushNamed(context, route);
  // stack overflow not working
//        bool isNewRouteSameAsCurrent = true;
//        Navigator.popUntil(context, (currentRoute) {
//          if (currentRoute.settings.name == route) {
//            isNewRouteSameAsCurrent = true;
//          }
//          return true;
//        });
//
//        if (!isNewRouteSameAsCurrent) {
//          Navigator.pushNamed(context, route);
//        }
}
