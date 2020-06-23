import 'package:flutter/material.dart';

class NavTab extends StatelessWidget {
  final String title;
  final String image;
  final int id;
  final int choose;

  final Function(int) onTap;
  final Color activeColor;
  final Color inactiveColor;

  const NavTab(
      {this.title,
        this.image,
        this.id,
        this.choose,
        this.onTap,
        this.activeColor,
        this.inactiveColor});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: choose == id ? 5 : 4,
      child: FlatButton(
        padding: const EdgeInsets.all(8),
        onPressed: () => onTap(id),
        child: SizedBox(
          height: 85, //to avoid vertical motion while switching
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: choose == id ? activeColor : inactiveColor,
                radius: choose == id ? 25 : 19,
                child: Image.asset(
                  image,
                  width: choose == id ? 35 : 25,
                  height: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: choose == id
                        ? TextStyle(color: Colors.teal, fontSize: 21)
                        : TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}