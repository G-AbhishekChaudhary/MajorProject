import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlue,
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
      backgroundColor: Colors.lightBlue,
      body: ContactUs(
        logo: AssetImage('images/contact.png'),
        email: 'xyz@gmail.com',
        cardColor: Colors.white,
        companyColor: Colors.white,
        textColor: Colors.black,
        taglineColor: Colors.yellow,
        companyName: 'Abhishek Chaudhary',
        websiteText: "www.google.com",
        phoneNumber: '+91123456789',
        githubUserName: 'G-AbhishekChaudhary',
        linkedinURL: 'https://www.linkedin.com/',
        tagLine: 'Flutter Developer',
      ),
      bottomNavigationBar: ContactUsBottomAppBar(
        companyName: 'Abhishek Chaudhary',
        textColor: Colors.black,
        backgroundColor: Colors.white,
        email: 'cabhishek936@gmail.com',
      ),
    );
  }
}
