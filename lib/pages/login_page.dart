import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                  width: 10,
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/rohit.jpg"),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text("Welcome to my app"),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter security key", labelText: "Password"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "cant be empty";
                    } else if (value != "12345") {
                      return "security key doesnt match";
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.pushNamed(context, "/home");
                      }
                    },
                    child: Text("Enter")),
              ],
            )),
      ),
    );
  }
}
