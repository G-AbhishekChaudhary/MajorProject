import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:majorproject/Shared_Prefrences/sharedPref.dart';
import 'package:majorproject/Shared_Prefrences/user.dart';
import 'package:majorproject/screens/HomeScreen/homepage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isObscure = false;
  String email;
  String password;
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

  final emailvalidator = MultiValidator([
    RequiredValidator(errorText: "Please! Enter your email"),
    EmailValidator(errorText: "Please! Enter a valid email")
  ]);

  final passwordvalidator = MultiValidator([
    RequiredValidator(errorText: "Password is required"),
    PatternValidator(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{10,}$',
        errorText: "Password is invalid")
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Roboto-Bold',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Login to your account",
                        style: TextStyle(
                          fontFamily: 'Robobto-Light',
                          fontSize: 15,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Form(
                      key: _formkey,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextFormField(
                              controller: emailController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Email",
                                prefixIcon:
                                    Icon(Icons.email, color: Colors.blue),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  email = value;
                                });
                              },
                              validator: emailvalidator,
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: _isObscure,
                              decoration: InputDecoration(
                                labelText: "Password",
                                hintText: "Password",
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                prefixIcon:
                                    Icon(Icons.lock, color: Colors.blue),
                                suffixIcon: Icon(
                                    !_isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.blue),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                              validator: passwordvalidator,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () async {
                        if (_formkey.currentState.validate()) {
                          loadSharePrefs();
                          if ((userLoad.email ?? "") == email &&
                              (userLoad.password ?? "") == password) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: new Text("Login Successfully"),
                                duration: const Duration(milliseconds: 500)));
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return QuizApp();
                            }));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: new Text(
                                    "Email & Paassword does not exit. Please Register"),
                                duration: const Duration(milliseconds: 50)));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: new Text("Invalid Email & Password"),
                              duration: const Duration(milliseconds: 50)));
                        }
                      },
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
