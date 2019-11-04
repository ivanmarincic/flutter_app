import 'package:flutter/material.dart';
import 'package:flutter_app/home.section.dart';
import 'package:flutter_app/home.special.pager.dart';
import 'package:flutter_app/home.special.section.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(color: Colors.white30,
        child: new SingleChildScrollView(child: new Column(
            children: <Widget>[
              new SpecialPager(),
              new HomeSection("images/food.png"),
              new HomeSpecialSection(),
              new HomeSection(""),
              new HomeSection(""),
              new HomeSection("")
            ]
        )));
  }
}