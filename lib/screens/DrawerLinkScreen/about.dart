import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Center(child: Text("About")),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Image(
                image: AssetImage("images/about.jpg"),
              ),
            ),
          ),
          Text(
            "Information About E-Learning ",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "A learning system based on formalised teaching but with the help of electronic resources is known as E-learning. While teaching can be based in or out of the classrooms, the use of computers and the Internet forms the major component of E-learning. E-learning can also be termed as a network enabled transfer of skills and knowledge, and the delivery of education is made to a large number of recipients at the same or different times. ",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
