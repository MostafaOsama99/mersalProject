import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/Mersal_Home.dart';
import 'Screens/Sign_Up.dart';
import 'Screens/Sign_In.dart';
import 'Screens/Donation.dart';
import 'Screens/Sponsors.dart';
import 'Screens/About_Mersal.dart';
import 'Screens/Charitable_activities.dart';
import 'Screens/settings.dart';
import 'Screens/Treat_Patient.dart';
import 'Screens/Urgent_Cases.dart';
import 'Screens/My_Donation.dart';
import 'Screens/rate_app.dart';
import 'Screens/mersal_projects.dart';
import 'dart:io' show Platform;

///this file is up to date 3/5/2020 at 2:27PM
void main() => runApp(
Platform.isIOS ? CupertinoApp : MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: 'Sign In',
      routes: {
        'Mersal Projects' : (context) => Projects(),
        'Rate App' : (context) => Rating(),
        'My Donation' :(context) => MyDonation(),
        'Urgent Cases' :(context) => UrgentCases(),
        'Treat' : (context) => TreatApatient(),
        'Settings' : (context) => Settings(),
        'About Mersal' : (context) => AboutMersal(),
        'Charitable' : (context) => Charitable(),
        'Sponsors' : (context) => Sponsors(),
        'Donation' : (context) => Home(),
        'Mersal Home' : (context) => MersalHome(),
        'Sign Up' : (context) => SignUp(),
        'Sign In' : (context) => SignIn()
      },
    )
);

