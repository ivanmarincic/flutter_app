import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:

        new Scaffold(
            appBar: new AppBar(
              title: new Row(
                children: <Widget>[
                  new Text(
                    "BringMeWine", style: new TextStyle(color: Colors.black87),)
                ],
              ),
              actions: <Widget>[
                new IconButton(
                    icon: new Icon(Icons.shopping_cart), onPressed: null),
                new IconButton(
                    icon: new Icon(Icons.favorite), onPressed: null),
                new IconButton(
                    icon: new Icon(Icons.account_circle), onPressed: null)
              ],
              bottom: new PreferredSize(
                  preferredSize: new Size(1000.0, 58.0),
                  child: new Container(padding: new EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 10.0),
                      child: new TextField(maxLines: 1,
                          decoration: new InputDecoration(
                              hintText: "Ricerca", fillColor: Colors.grey,
                              icon: new Icon(Icons.search))))),
              backgroundColor: Colors.white,
            ),
            primary: true,
            bottomNavigationBar: new BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  new BottomNavigationBarItem(
                      icon: new Icon(Icons.home, color: Colors.grey),
                      title: new Text("HOME",
                        style: new TextStyle(
                            color: Colors.grey, fontSize: 10.0),)),
                  new BottomNavigationBarItem(
                      icon: new Icon(Icons.restaurant, color: Colors.grey),
                      title: new Text("ABBINAMNTI",
                          style: new TextStyle(
                              color: Colors.grey, fontSize: 10.0))),
                  new BottomNavigationBarItem(
                      icon: new Icon(Icons.local_bar, color: Colors.grey),
                      title: new Text("VINI",
                          style: new TextStyle(
                              color: Colors.grey, fontSize: 10.0))),
                  new BottomNavigationBarItem(
                      icon: new Icon(Icons.local_offer, color: Colors.grey),
                      title: new Text("PRODUTTORI",
                          style: new TextStyle(
                              color: Colors.grey, fontSize: 10.0))),
                  new BottomNavigationBarItem(
                      icon: new Icon(Icons.local_florist, color: Colors.grey),
                      title: new Text("UVE",
                          style: new TextStyle(
                              color: Colors.grey, fontSize: 10.0))),
                  new BottomNavigationBarItem(
                      icon: new Icon(Icons.person, color: Colors.grey),
                      title: new Text("IO",
                          style: new TextStyle(
                              color: Colors.grey, fontSize: 10.0)))
                ],
                type: BottomNavigationBarType.fixed),
            body: new HomePage()
        )
    );
  }
}
