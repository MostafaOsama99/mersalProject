import 'package:flutter/material.dart';

class AmountField extends StatelessWidget {
  final String label;
  final String image;
  final Function(double) valueSetter;

  AmountField({this.label, this.valueSetter, this.image});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 40,
      //width: 250,
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
      child: TextFormField(
//        onSaved: (val) {
//          var value = double.parse(val);
//          if (0 < value && value < 50000) valueSetter(value);
//        },

        validator: (val) {
          var value = double.parse(val);
          if (0 < value && value < 50000) valueSetter(value);
          // return null ;
          return 'invalid amount';
        },
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 12,left: 8,top: 3,bottom: 3),
            child: Image.asset(image, width: 40, height: 40),
          ),
          hoverColor: Colors.teal,
          contentPadding: const EdgeInsets.only(bottom: 10, left: 20),
          hintText: '0',
          labelText: label,
          labelStyle: TextStyle(color: Colors.green.shade600),
          hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
          border: InputBorder.none,
//          border: OutlineInputBorder(
//
//            borderRadius: BorderRadius.circular(8.0),
//            gapPadding: 6,
//            borderSide: BorderSide.none,
//            //  borderSide: BorderSide(width: 1.5, style: BorderStyle.solid  )
//          ),
        ),
      ),
    );
  }
}
