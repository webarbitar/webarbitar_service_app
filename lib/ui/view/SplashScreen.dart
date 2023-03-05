
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_app/ui/view/welcome/welcome_screen.dart';



void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => WelcomeScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xffFFFFFF),
                gradient: LinearGradient(colors: [(new  Color(0xffFFFFFF)), new Color(0xffFFFFFF)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Center(
            child: Container( height: 250,
              width: 200,
              child: Image.asset("images/logo3.jpg"),

            ),

          )

        ],
      ),

    );
  }
}