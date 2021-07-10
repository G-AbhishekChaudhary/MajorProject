import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:majorproject/Shared_Prefrences/sharedPref.dart';
import 'package:majorproject/Shared_Prefrences/user.dart';
import 'package:majorproject/screens/login/login.dart';
import 'package:validators/validators.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formkey = GlobalKey<FormState>();
  bool _isObscure = false;
  String name, email, phone, password;

  SharedPref sharedPref = SharedPref();
  User userSave = User();

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  // Validation on email,name, password

  final namevalidator = RequiredValidator(errorText: "Please! Enter your name");

  final emailvalidator = MultiValidator([
    RequiredValidator(errorText: "Email is required"),
    EmailValidator(errorText: "Email is invalid")
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Register",
                    style: TextStyle(
                        fontFamily: 'Roboto-Bold',
                        fontSize: 30,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create an account, its free to register",
                    style: TextStyle(
                        fontFamily: 'Roboto-Regular',
                        fontSize: 15,
                        color: Colors.green),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Form(
                  key: _formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: "Name",
                            hintText: "Name",
                            prefixIcon: Icon(Icons.person, color: Colors.blue),
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
                          onSaved: (String value) {
                            name = value;
                          },
                          onChanged: (value) {
                            setState(() {
                              userSave.name = value;
                            });
                          },
                          validator: namevalidator,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Email",
                            prefixIcon: Icon(Icons.email, color: Colors.blue),
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
                          onSaved: (String value) {
                            email = value;
                          },
                          onChanged: (value) {
                            setState(() {
                              userSave.email = value;
                            });
                          },
                          validator: emailvalidator,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.number,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: "Phone No.",
                            hintText: "Phone No.",
                            prefixIcon:
                                Icon(Icons.phone_android, color: Colors.blue),
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
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Please Re-Enter Name";
                            }
                            if (value.length != 10 && isNumeric(value)) {
                              return "Phone is invalid";
                            }
                            return null;
                          },
                          onSaved: (String value) {
                            phone = value;
                          },
                          onChanged: (value) {
                            setState(() {
                              userSave.phoneno = value;
                            });
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: passwordController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock, color: Colors.blue),
                            suffixIcon: Icon(
                                !_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.blue),
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
                          validator: passwordvalidator,
                          onTap: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          onSaved: (String value) {
                            password = value;
                          },
                          onChanged: (value) {
                            setState(() {
                              userSave.password = value;
                            });
                          },
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: confirmPassController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
                            hintText: "Confirm Password",
                            prefixIcon: Icon(Icons.lock, color: Colors.blue),
                            suffixIcon: Icon(
                                !_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.blue),
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
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "Please Re-Enter Name";
                            }
                            if (passwordController.text !=
                                confirmPassController.text) {
                              return "Password doesnot match";
                            }
                            return null;
                          },
                          onTap: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () async {
                  if (_formkey.currentState.validate()) {
                    sharedPref.save("user", userSave);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: new Text("Register Successfully"),
                        duration: const Duration(milliseconds: 50)));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: new Text("Not Register Successfully"),
                        duration: const Duration(milliseconds: 50)));
                  }
                },
                color: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
