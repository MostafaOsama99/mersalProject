import 'package:flutter/material.dart';

import '../widgets/drawer_menu.dart';
import '../widgets/clickable_tile.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          iconTheme: const IconThemeData(color: Colors.teal),
          title: Text('Settings'),
          centerTitle: true,
          actions: <Widget>[
            Image.asset('Images/Logo.png'),
          ],
        ),
      ),
      drawer: DrawerMenu(),
      body: Card(
        margin: const EdgeInsets.all(8),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClickableTile(
                image: 'Images/profile.png',
                title: 'Profile',
                onTap: () {},
              ),
              ClickableTile(
                image: 'Images/lang.png',
                title: 'Language',
                onTap: () {},
              ),
              ClickableTile(
                image: 'Images/logout.png',
                title: 'Logout',
                onTap: () => Navigator.pushNamed(context, 'Sign In'),
                divider: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}

//            Padding(
//              padding: EdgeInsets.all(8.0),
//              child: Container(
//                decoration: BoxDecoration(
//                  boxShadow: [
//                    BoxShadow(
//                      color: Colors.grey, blurRadius: 1,
//                      // has the effect of softening the shadow
//                      spreadRadius: 0,
//                      // has the effect of extending the shadow
//                      offset: Offset(
//                        1.0, // horizontal, move right 10
//                        1.0, // vertical, move down 10
//                      ),
//                    )
//                  ],
//                  color: Colors.white,
//                  border: new Border.all(color: Colors.white),
//                  borderRadius: new BorderRadius.all(Radius.circular(8)),
//                ),
//                width: 370,
//                height: 220,
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                    children: <Widget>[
//                      Row(
//                        children: <Widget>[
//                          Container(
//                            width: 40,
//                            height: 40,
//                            child: Image.asset("Images/profile.png"),
//                          ),
//                          SizedBox(
//                            width: 20,
//                          ),
//                          Text(
//                            "Profile",
//                            style: TextStyle(fontSize: 22),
//                          )
//                        ],
//                      ),
//                      Divider(
//                        height: 25,
//                        color: Colors.grey,
//                      ),
//                      Row(
//                        children: <Widget>[
//                          Container(
//                            width: 40,
//                            height: 40,
//                            child: Image.asset("Images/lang.png"),
//                          ),
//                          SizedBox(
//                            width: 20,
//                          ),
//                          Text(
//                            "Language",
//                            style: TextStyle(fontSize: 22),
//                          )
//                        ],
//                      ),
//                      Divider(
//                        height: 25,
//                        color: Colors.grey,
//                      ),
//                      FlatButton(
//                        padding: EdgeInsets.all(0),
//                        onPressed: () {
//                          Navigator.pushNamed(context, 'Sign In');
//                        },
//                        child: Row(
//                          children: <Widget>[
//                            Container(
//                              width: 40,
//                              height: 40,
//                              child: Image.asset("Images/logout.png"),
//                            ),
//                            SizedBox(
//                              width: 20,
//                            ),
//                            Text(
//                              "Logout",
//                              style: TextStyle(
//                                  fontSize: 22, fontWeight: FontWeight.normal),
//                            )
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
