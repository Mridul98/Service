import 'package:flutter/material.dart';

class TopNavBar extends StatefulWidget {
  @override
  _TopNavBarState createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  Color color = Colors.transparent;
  Color hoverColor = Color(0xFF70a1ff);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0078D4),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RaisedButton(
            hoverColor: hoverColor,
            color: Colors.transparent,
            elevation: 2.0,
            onPressed: () {
              setState(() {});
            },
            child: Icon(
              Icons.home_rounded,
              color: Colors.lightBlue,
            ),
          ),
          RaisedButton(
            hoverColor: hoverColor,
            color: Colors.transparent,
            elevation: 2.0,
            onPressed: () {},
            child: Text(
              'Editing Services',
              style: TextStyle(color: Colors.white70),
            ),
          ),
          RaisedButton(
            hoverColor: hoverColor,
            color: Colors.transparent,
            elevation: 2.0,
            onPressed: () {},
            child: Text(
              "Quality Assurance Services",
              style: TextStyle(color: Colors.white70),
            ),
          ),
          RaisedButton(
            hoverColor: hoverColor,
            color: Colors.transparent,
            elevation: 2.0,
            onPressed: () {},
            child: Text(
              "Pricing & Quotation",
              style: TextStyle(color: Colors.white70),
            ),
          ),
          RaisedButton(
            hoverColor: hoverColor,
            color: Colors.transparent,
            elevation: 2.0,
            onPressed: () {},
            child: Text(
              "About Us",
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
