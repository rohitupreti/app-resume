import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer.dart';

class EducationPage extends StatelessWidget {
  //const MyEducation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Education"),
      )),
      body: ListView(
        children: [
          ExpansionTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text("Class 10th",
                textScaleFactor: 1.5, style: TextStyle(color: Colors.black)),
            children: [
              ListTile(
                leading: Icon(CupertinoIcons.arrow_right, color: Colors.black),
                title: Text(
                    "passed in 2017 from city montessori school,lucknow,india"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.arrow_right, color: Colors.black),
                title: Text("scored 92.4%"),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text("Class 12th",
                textScaleFactor: 1.5, style: TextStyle(color: Colors.black)),
            children: [
              ListTile(
                leading: Icon(CupertinoIcons.arrow_right, color: Colors.black),
                title: Text(
                    "passed in 2019 from city montessori school,lucknow,india"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.arrow_right, color: Colors.black),
                title: Text("scored 95%"),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text("Undergraduation",
                textScaleFactor: 1.5, style: TextStyle(color: Colors.black)),
            children: [
              ListTile(
                leading: Icon(CupertinoIcons.arrow_right, color: Colors.black),
                title: Text("Bachelors in Engineering"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.arrow_right, color: Colors.black),
                title: Text("Major in computer engineering"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.arrow_right, color: Colors.black),
                title: Text("passing in 2023 from Thapar university,india"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.arrow_right, color: Colors.black),
                title: Text("8.94 cgpa"),
              ),
            ],
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
