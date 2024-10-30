import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login View"),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Center(
                child: Container(
                  height: 100,
                  width: 200,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/640px-Instagram_logo.svg.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your name or phone no",
                    hintText: "jdratput19@gmail.com"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "enter the password",
                  hintText: "12345",
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 350,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print("Successfully login");
                    },
                    child: Text("Log in"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 62),
                    child: Text("Forgot your login details?"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: InkWell(
                      onTap: () {
                        print("hello");
                      },
                      child: Text(
                        "Get help logging in",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
