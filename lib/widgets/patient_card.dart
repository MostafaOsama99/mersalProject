import 'package:flutter/material.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../models/patient_model.dart';

//card contains image and info about mersal project --16/6
//TODO: Implement image.network

class PatientCard extends StatelessWidget {
   final Patient patient;
   const PatientCard(this.patient);

  final double height = 160; //widget height

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,  // instead of ClipRRect
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 4,
              child: Image.asset(patient.imageUrl,
                fit: BoxFit.fitHeight,
                height: height,
              ),
            ),

            Flexible(
              flex: 6,
              child: SizedBox(
                height: height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[

                      Text(
                        "Case #${patient.id}",
                        style: TextStyle(color: Colors.teal, fontSize: 18),
                        textAlign: TextAlign.left,
                      ),

                      Spacer(flex: 3),

                      Text(((patient.collected / patient.amount)*100).toStringAsFixed(0) + '%'),

                      StepProgressIndicator(
                        totalSteps: patient.amount,
                        currentStep: patient.collected,
                        size: 6,
                        padding: 0,
                        selectedColor: Color(0xff039192),
                        unselectedColor: Color(0xffECB720),
                      ),

                      Spacer(flex: 3),

                      FittedBox(
                        ///** MUST have fixed size parent **
                        fit: BoxFit.fitWidth,
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(  //default textStyle
                                  color: Colors.grey, //    fontSize: 20
                              ),
                              children: [
                                TextSpan(text: 'Raised:'),
                                TextSpan(
                                    text: patient.collected.toString() +'LE  ',
                                    style: TextStyle(color: Colors.amber)),
                                TextSpan(text: 'Goal: '),
                                TextSpan(
                                    text: patient.amount.toString() +'L.E',
                                    style: TextStyle(color: Colors.teal))
                              ]),
                        ),
                      ),

                      Spacer(flex: 3),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Text( 'Donate',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            elevation: 5,
                            color: Colors.red,
                            height: 25,
                            minWidth: 80,
                            splashColor: Colors.grey.withOpacity(0.8),
                            highlightColor: Colors.red.shade700,
                          ),
                          MaterialButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Text( 'read more',
                              style: TextStyle(color: Colors.white, fontSize: 13.5),
                            ),
                            elevation: 5,padding: const EdgeInsets.all(0),
                            color: Colors.black,
                            height: 25,
                            minWidth: 80,
                            splashColor: Colors.grey.withOpacity(0.2),
                            highlightColor: Colors.white10.withOpacity(0.1),
                          ),
                        ],
                      ),
                      Spacer(flex: 1)
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
