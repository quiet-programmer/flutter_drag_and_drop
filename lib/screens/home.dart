import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // String text = "";

  List<Widget> movableItems = [];

  double xPosition = 0;
  double yPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag and Drop"),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              height: 300,
              child: Image.asset(
                'assets/images/bobbyJ.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              top: yPosition,
              left: xPosition,
              child: GestureDetector(
                  onPanUpdate: (tapInfo) {
                    setState(() {
                      xPosition += tapInfo.delta.dx;
                      yPosition += tapInfo.delta.dy;
                    });
                  },
                  child: Text(
                    "Hello World",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w700),
                  )),
            )
          ],
        ),
      ),
    );
  }
}