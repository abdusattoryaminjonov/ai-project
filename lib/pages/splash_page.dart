import 'dart:async';
import 'package:ai_project/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _callHomePage() {
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  _initTimer() {
    Timer(Duration(seconds: 2), () {
      _callHomePage();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/im_logotip.jpg"),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Text("To look for Me!",style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo
              ),)
            ],
          )
        )
      ),
    );
  }
}