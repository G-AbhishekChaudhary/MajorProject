import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Website extends StatefulWidget {
  @override
  _WebsiteState createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Center(child: Text("Offical Website")),
        elevation: 0.1,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 8),
        child: ListView(
          children: [
            Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(
                                width: 1.0, color: Colors.yellow))),
                    child: Icon(Icons.web, color: Colors.black),
                  ),
                  title: Text(
                    "Flutter",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.subtitles, color: Colors.yellowAccent),
                      Text(
                          " Go watch there offical website related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch("https://flutter.dev/");
                    },
                  ),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(
                                width: 1.0, color: Colors.yellow))),
                    child: Icon(Icons.web, color: Colors.black),
                  ),
                  title: Text(
                    "C++",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.subtitles, color: Colors.yellowAccent),
                      Text(
                          " Go watch there offical website related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch("https://www.cplusplus.com/");
                    },
                  ),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(
                                width: 1.0, color: Colors.yellow))),
                    child: Icon(Icons.web, color: Colors.black),
                  ),
                  title: Text(
                    "Java",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.subtitles, color: Colors.yellowAccent),
                      Text(
                          " Go watch there offical website related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch("https://www.java.com/en/");
                    },
                  ),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(
                                width: 1.0, color: Colors.yellow))),
                    child: Icon(Icons.web, color: Colors.black),
                  ),
                  title: Text(
                    "JavaScript",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.subtitles, color: Colors.yellowAccent),
                      Text(
                          " Go watch there offical website related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch("https://www.javascript.com/");
                    },
                  ),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: new BoxDecoration(
                        border: new Border(
                            right: new BorderSide(
                                width: 1.0, color: Colors.yellow))),
                    child: Icon(Icons.web, color: Colors.black),
                  ),
                  title: Text(
                    "Linux",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.subtitles, color: Colors.yellowAccent),
                      Text(
                          " Go watch there offical website related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch("https://www.linux.org/");
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
