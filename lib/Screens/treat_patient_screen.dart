import 'package:flutter/material.dart';

import '../models/patient_model.dart';
import '../widgets/patient_card.dart';
import '../demo_data.dart';

class TreatPatient extends StatelessWidget {
  static const String route = '/treat_patient';

  final bool isUrgent;

  const TreatPatient({this.isUrgent = false});

  @override
  Widget build(BuildContext context) {
    List<Patient> patientList = isUrgent
        ? demoCases.where((patient) => patient.isUrgent).toList()
        : demoCases;

    // TODO: data getter / provider
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            leading: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () => Navigator.pop(context),
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.teal,
                  size: 35,
                )),
            title: Text(isUrgent ? 'Urgent Cases' : 'Treat a patient'),
            centerTitle: true,
          ),
        ),
        body: ListView.builder(
            itemCount: patientList.length,
            itemBuilder: (ctx, i) {
              return PatientCard(patientList[i]);
            }));
  }
}
