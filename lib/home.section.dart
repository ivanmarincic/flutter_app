import 'package:flutter/material.dart';
import 'package:flutter_app/home.section.bottle.dart';

class HomeSection extends StatefulWidget {

  final String foodImage;

  HomeSection(this.foodImage);

  @override
  HomeSectionState createState() {
    return new HomeSectionState(this.foodImage);
  }
}

class HomeSectionState extends State<HomeSection> {

  final String foodImage;

  HomeSectionState(this.foodImage);

  @override
  Widget build(BuildContext context) {
    var foodImageContainer;
    if (foodImage != "") {
      foodImageContainer = new Container(
          child: new Image(image: new AssetImage(foodImage)));
    } else {
      foodImageContainer = new Container();
    }
    return new Semantics(
      container: true,
      child: new Container(
          margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: new Material(
              color: Colors.white,
              type: MaterialType.card,
              elevation: 2.0,
              child: new Container(child: new Column(children: <Widget>[
                new Row(children: <Widget>[
                  new Expanded(child: new Padding(
                      padding: new EdgeInsets.only(left: 10.0, right: 10.0),
                      child: new Text("SCELTI PER TE",
                          style: new TextStyle(fontWeight: FontWeight.bold)))),
                  new FlatButton(onPressed: null, child: new Row(
                      children: <Widget>[
                        new Text("Veci Tutto",
                            style: new TextStyle(color: Colors.black87)),
                        new Icon(Icons.chevron_right, color: Colors.black87)
                      ]
                  ))
                ]),
                new Divider(),
                new Row(children: <Widget>[
                  new Expanded(child: new SectionBottleContainer()),
                  new Expanded(child: new SectionBottleContainer())
                ]),
                foodImageContainer
              ]))
          )
      ),
    );
  }
}