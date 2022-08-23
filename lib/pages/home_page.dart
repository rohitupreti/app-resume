import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("My App")),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage("assets/images/rohit.jpg"),
                      fit: BoxFit.cover)),
            ),
            Center(
              child: Text(
                "Hello,I am Rohit Upreti.\nI welcome you to my app.\nHere,you can access information about me regarding my education,my mail and my social media accounts.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            )
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
