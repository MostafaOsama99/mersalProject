import 'package:flutter/material.dart';
import 'package:mersal/widgets/drawer_menu.dart';

class Charitable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text('Charitable Activites'),
          centerTitle: true,
        ),
      ),
      drawer: DrawerMenu(),
      body: Column(
        children: <Widget>[
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,

              ///child aspect ratio
              childAspectRatio: 130 / 150,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, i) {
              return CharitableExtract(
                image: 'Images/well.png',
                text: 'well driling',
              );
            },
          ),
        ],
      ),
    );
  }
}

class CharitableExtract extends StatelessWidget {
  CharitableExtract({this.image, this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1,
            // has the effect of softening the shadow
            spreadRadius: 0,
            // has the effect of extending the shadow
            offset: Offset(
              1.0, // horizontal, move right 10
              1.0, // vertical, move down 10
            ),
          )
        ], color: Colors.white, borderRadius: new BorderRadius.circular(8)),
        width: 130,
        height: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          //  clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: Center(
                      child: Image.asset(
                image,
                height: 80,
                width: 80,
              ))),
              Container(
                height: 30,
                color: Color(0xffBDBDBD),
                child: Center(
                  child: Text(
                    text,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
