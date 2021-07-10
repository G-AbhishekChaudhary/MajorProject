import 'package:flutter/material.dart';
import 'package:majorproject/Shared_Prefrences/sharedPref.dart';
import 'package:majorproject/Shared_Prefrences/user.dart';
import 'package:majorproject/home.dart';
import 'package:majorproject/screens/DrawerLinkScreen/about.dart';
import 'package:majorproject/screens/DrawerLinkScreen/contactus.dart';
import 'package:majorproject/screens/DrawerLinkScreen/profile.dart';
import 'package:majorproject/screens/HomeScreen/custome_clips.dart';
import 'package:majorproject/screens/InsideScreen/learn.dart';
import 'package:majorproject/screens/InsideScreen/website.dart';
import 'package:majorproject/screens/InsideScreen/youtube.dart';
import 'package:majorproject/screens/welcome/welcome.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  String newuser;
  User userLoad = User();
  SharedPref sharedPref = SharedPref();
  loadSharePrefs() async {
    try {
      User user = User.fromJson(await sharedPref.read("user"));
      setState(() {
        userLoad = user;
      });
    } catch (e) {
      return 0;
    }
  }

  @override
  void initState() {
    loadSharePrefs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.only(top: 0),
            physics: NeverScrollableScrollPhysics(),
            children: [
              ClipPath(
                clipper: MyCustomClipsForDrawer(),
                child: Container(
                  height: 240,
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "" + (userLoad.name ?? ""),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        "" + (userLoad.email ?? ""),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('images/user.jpg'),
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.lightBlue, Colors.blue],
                        begin: Alignment.bottomRight,
                        end: Alignment.center,
                        tileMode: TileMode.clamp,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                hoverColor: Colors.yellow,
                title: Text(
                  "Profile",
                  style: TextStyle(
                      fontFamily: "Roboto", fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                hoverColor: Colors.yellow,
                title: Text(
                  "About",
                  style: TextStyle(
                      fontFamily: "Roboto", fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                hoverColor: Colors.yellow,
                title: Text(
                  "Contact Us",
                  style: TextStyle(
                      fontFamily: "Roboto", fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contact()));
                },
              ),
              Divider(
                height: 10,
                color: Colors.black12,
              ),
              ListTile(
                leading: Icon(Icons.logout),
                hoverColor: Colors.yellow,
                title: Text(
                  "Logout",
                  style: TextStyle(
                      fontFamily: "Roboto", fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Row(
                        children: [
                          Icon(Icons.logout, size: 20, color: Colors.red),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Logout", style: TextStyle(color: Colors.red))
                        ],
                      ),
                      content: Text(
                        "Do you want to logout",
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              sharedPref.remove("user");
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: new Text("Logout Successfully"),
                                      duration:
                                          const Duration(milliseconds: 500)));
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (content) => Welcome()));
                            },
                            child: Text("Yes")),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Cancel")),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Center(
          child: Text(
            "E-Learning App",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.lightBlue,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(
              title: "Learn",
              image: "images/learn.jpg",
            ),
            MyMenu(
              title: "Play Quiz",
              image: "images/first_image.jpg",
            ),
            MyMenu(
              title: "Website",
              image: "images/website.jpg",
            ),
            MyMenu(
              title: "Youtube",
              image: "images/youtube.png",
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({
    this.title,
    this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (title == "Learn") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Learn()));
          } else if (title == "Play Quiz") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PlayQuiz()));
          } else if (title == "Youtube") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Youtube()));
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Website()));
          }
        },
        splashColor: Colors.lightBlue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(100.0),
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    child: ClipOval(
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          image,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
