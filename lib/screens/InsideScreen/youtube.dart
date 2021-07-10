import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Youtube extends StatefulWidget {
  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Center(child: Text("Youtube Vidoes")),
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
                    child:
                        Icon(Icons.youtube_searched_for, color: Colors.black),
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
                          " Go watch this videos related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch(
                          "https://www.youtube.com/watch?v=fmPmrJGbb6w&list=PLlxmoA0rQ-Lw6tAs2fGFuXGP13-dWdKsB");
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
                    child:
                        Icon(Icons.youtube_searched_for, color: Colors.black),
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
                          " Go watch this videos related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch(
                          "https://www.youtube.com/watch?v=j8nAHeVKL08&list=PLu0W_9lII9agpFUAlPFe_VNSlXW5uE0YL");
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
                    child:
                        Icon(Icons.youtube_searched_for, color: Colors.black),
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
                          " Go watch this videos related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch(
                          "https://www.youtube.com/watch?v=ntLJmHOJ0ME&list=PLu0W_9lII9agS67Uits0UnJyrYiXhDS6q");
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
                    child:
                        Icon(Icons.youtube_searched_for, color: Colors.black),
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
                          " Go watch this videos related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch(
                          "https://www.youtube.com/watch?v=cvvwkgp4HBg&list=PLu0W_9lII9ajyk081To1Cbt2eI5913SsL");
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
                    child:
                        Icon(Icons.youtube_searched_for, color: Colors.black),
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
                          " Go watch this videos related to this topic by Clicking on Arrow Icon",
                          style: TextStyle(color: Colors.blue))
                    ],
                  ),
                  trailing: InkWell(
                    child: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0),
                    onTap: () {
                      return launch(
                          "https://www.youtube.com/watch?v=YHFzr-akOas&list=PLS1QulWo1RIb9WVQGJ_vh-RQusbZgO_As");
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
