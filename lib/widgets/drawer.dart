//import 'dart:html';
//import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  //const MyDrawer({ Key? key }) : super(key: key);
  @override
  _launchURL(lurl) async {
    //const lurl = "https://www.linkedin.com/in/rohit-upreti-b708b318a/";
    if (!await canLaunch(lurl)) {
      await launch(
        lurl,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $lurl';
    }
  }

  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent,
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Rohit Upreti"),
                accountEmail: Text("upreti01234@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/rohit.jpg")),
              ),
            ),
            Expanded(
                child: ListView(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.black,
                  ),
                  title: Text("Home",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.money_dollar,
                    color: Colors.black,
                  ),
                  title: Text("Pay me",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "/education");
                  },
                  leading: Icon(
                    CupertinoIcons.book,
                    color: Colors.black,
                  ),
                  title: Text("Education",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  onTap: () {
                    var email = "mailto:upreti01234@gmail.com";
                    _launchURL(email);
                  },
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Colors.black,
                  ),
                  title: Text("Mail",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  onTap: () {
                    const linkedin =
                        "https://www.linkedin.com/in/rohit-upreti-b708b318a/";
                    _launchURL(linkedin);
                  },
                  leading: Text(
                    "In",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  title: Text("Linkedin",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
