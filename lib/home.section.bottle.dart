import 'package:flutter/material.dart';

class SectionBottleContainer extends StatefulWidget {

  @override
  SectionBottleContainerState createState() {
    return new SectionBottleContainerState();
  }
}

class SectionBottleContainerState extends State<SectionBottleContainer> {

  final Bottle bottle = new Bottle();

  @override
  Widget build(BuildContext context) {
    return new Container(padding: new EdgeInsets.only(left: 10.0, right: 10.0),
        alignment: Alignment.center,
        child: new Column(
          children: <Widget>[
            new Image(image: new AssetImage("images/spoder.png")),
            new Padding(padding: new EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Text(
                    "Champagne Brut Blanc de Blancs Reserve Grand Cru Hostomme",
                    style: new TextStyle(color: Colors.black87),
                    maxLines: 3,
                    textAlign: TextAlign.center)),
            new Padding(padding: new EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Text("27,50 \$", textAlign: TextAlign.center,
                    style: new TextStyle(fontWeight: FontWeight.bold))),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              new IconButton(
                  icon: new Icon(
                      bottle.isInCart ? Icons.shopping_cart : Icons
                          .add_shopping_cart),
                  color: bottle.isInCart ? Colors.black : Colors.black12,
                  onPressed: () {
                    setState(() {
                      bottle.isInCart = !bottle.isInCart;
                    });
                  }),
              new IconButton(
                  icon: new Icon(
                      bottle.isFavourite ? Icons.favorite : Icons
                          .favorite_border),
                  color: bottle.isFavourite ? Colors.black : Colors.black12,
                  onPressed: () {
                    setState(() {
                      bottle.isFavourite = !bottle.isFavourite;
                    });
                  }),
            ]),
          ],
        ));
  }
}

class Bottle {
  bool isInCart = false;
  bool isFavourite = false;
}