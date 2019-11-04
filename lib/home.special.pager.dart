import 'package:flutter/material.dart';

class SpecialPager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SpecialPagerState();
  }
}

class SpecialPagerState extends State<StatefulWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = new TabController(length: 4, vsync: this);
    return new Semantics(
      container: true,
      child: new Container(
          margin: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: new Material(
              color: Colors.white,
              type: MaterialType.card,
              elevation: 2.0,
              child: new Column(children: <Widget>[
                new Container(height: 200.0,
                    child: new TabBarView(
                        controller: tabController, children: <Widget>[
                      new Image(image: new AssetImage("images/spoder.png")),
                      new Image(image: new AssetImage("images/spoder.png")),
                      new Image(image: new AssetImage("images/spoder.png")),
                      new Image(image: new AssetImage("images/spoder.png"))
                    ])),
                new Container(
                    height: 48.0,
                    child: new TabPageSelector(controller: tabController))
              ])
          )
      ),
    );
  }
}