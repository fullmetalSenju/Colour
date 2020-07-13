import 'package:flutter/material.dart';
import 'dart:math';
import 'const/const.dart';

class ColourPage extends StatefulWidget {
  createState() {
    return ColourPageState();
  }
}

class ColourPageState extends State<ColourPage> {
  var colorChange = Color(0xff4caf50);

  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(color: colorChange),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white,
            highlightColor: colorChange,
            onTap: () {
              setState(
                () {
                  colorChange = Colors
                      .primaries[Random().nextInt(Colors.primaries.length)];
                },
              );
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'hey you'.toUpperCase(),
                style: kTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
