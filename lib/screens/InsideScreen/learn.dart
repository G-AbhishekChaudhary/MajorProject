import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Learn extends StatefulWidget {
  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Center(child: Text("Learn")),
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
                    child: Icon(Icons.picture_as_pdf, color: Colors.black),
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
                          " Go watch this pdf docuent related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch(
                          "https://www.tutorialspoint.com/flutter/flutter_tutorial.pdf");
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
                    child: Icon(Icons.picture_as_pdf, color: Colors.black),
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
                          " Go watch this pdf docuent related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch(
                          "https://www.tutorialspoint.com/cplusplus/cpp_tutorial.pdf");
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
                    child: Icon(Icons.picture_as_pdf, color: Colors.black),
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
                          " Go watch this pdf docuent related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch(
                          "https://www.tutorialspoint.com/java/java_tutorial.pdf");
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
                    child: Icon(Icons.picture_as_pdf, color: Colors.black),
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
                          " Go watch this pdf docuent related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch(
                          "https://www.tutorialspoint.com/javascript/javascript_tutorial.pdf");
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
                    child: Icon(Icons.picture_as_pdf, color: Colors.black),
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
                          " Go watch this pdf docuent related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch(
                          "https://doc.lagout.org/operating%20system%20/linux/Linux%20-%20The%20Complete%20Reference.pdf");
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
