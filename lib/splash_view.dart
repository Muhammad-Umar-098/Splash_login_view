import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SplashView"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "Welcome to splash screen",
          style: TextStyle(fontSize: 23),
        ),
      ),
    );
  }
}
