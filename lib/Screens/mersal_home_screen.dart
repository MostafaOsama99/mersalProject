import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:mersal/demo_data.dart';

import '../widgets/mersal_home_widgets/home_viewer.dart';
import '../widgets/mersal_home_widgets/mersal_in_numbers_widget.dart';
import '../widgets/mersal_home_widgets/project_card.dart';
import 'treat_patient_screen.dart';
import '../widgets/drawer_menu.dart';
import 'sponsors_screen.dart';
import 'Charitable_activities.dart';

class MersalHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MesralHome();
  }
}

class MesralHome extends State<MersalHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xffDFDFDF),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            iconTheme: new IconThemeData(color: Colors.teal),
            title: Text('Mersal'),
            centerTitle: true,
            actions: <Widget>[
              Image.asset(
                'Images/Logo.png',
              )
            ],
          ),
        ),
        drawer: DrawerMenu(),
        body: ListView(
          children: <Widget>[
            SizedBox(
                height: 150,
                child: Carousel(
                  images: [ExactAssetImage("Images/Slider1.png")],
                  showIndicator: false,
                  borderRadius: false,
                )),
            SizedBox(height: 10),

            HomeViewer(
              title: 'Charitable activities',
              route: 'Charitable',
              listHeight: 140,
              view: <Widget>[
                FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pushNamed(context, TreatPatient.route);
                    },
                    /*Navigator.push(context, MaterialPageRoute(builder: (context){
                   return RateMyAppTestApp();
                 })); */
                    child: CharitableExtract(
                      image: 'Images/patientt.png',
                      text: "Treat a patient",
                    ))
              ],
            ),

            SizedBox(height: 10),

            /// Mersal Project
            HomeViewer(
              title: 'Mersal Projects',
              route: "Mersal Projects",
              listHeight: 300,
              view: List.generate(demoProjects.length, (i)=> ProjectCard(demoProjects[i])),
            ),

            SizedBox(height: 10),

            //TODO: data handle - padding for all children
            /// sponsors
            HomeViewer(
              title: 'Our Sponsors',
              route: 'Sponsors',
              listHeight: 120,
              view: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: SponsorsItem(
                    image: "Images/smsm.jpg",
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Mersal in numbers ",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.teal, fontSize: 24),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MersalInNumbers(
                          title: 'Donors',
                          number: 10000,
                          image: 'Images/donors.png'),
                      MersalInNumbers(
                          title: 'Projects',
                          number: 20,
                          image: 'Images/projects.png'),
                      MersalInNumbers(
                          title: 'Donations',
                          number: 36000,
                          image: 'Images/donation.png'),
                    ],
                  ),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ],
        ));
  }
}