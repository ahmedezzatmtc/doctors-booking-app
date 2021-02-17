import 'package:flutter/material.dart';



class CustomAppBar extends StatefulWidget {

final double height;
final String text;
final Widget secondPart;
final String className;

CustomAppBar(this.height, this.text, this.secondPart, this.className);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0), bottomLeft: Radius.circular(20.0)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff00BBDC),
            Color(0xff03CBC8)
          ]
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          widget.className == 'Appointment' ? SizedBox() : Icon(Icons.sort, color: Colors.white, size: 25.0),
          Text(
            widget.text,
            style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          widget.secondPart,
        ],
      ),
    );
  }
}