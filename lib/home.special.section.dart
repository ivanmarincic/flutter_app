import 'package:flutter/material.dart';

class HomeSpecialSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
                    child: new Text("SCELTI PER TE"),)),
                  new FlatButton(onPressed: null, child: new Row(
                      children: <Widget>[
                        new Text("Veci Tutto", style: new TextStyle(color: Colors.black87)),
                        new Icon(Icons.chevron_right, color: Colors.black87)
                      ]
                  ))
                ]),
                new Divider(),
                new Container(
                    child: new Image(image: new AssetImage("images/special.png")))
              ]))
          )
      ),
    );
  }
}