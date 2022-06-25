import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/views/home/home.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  startTime() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, navigationPage);
  }

  navigationPage() {
    Navigator.of(context).pushAndRemoveUntil(
        PageTransition(type: PageTransitionType.fade, child: const Home()),
        (route) => false);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://essstr.blob.core.windows.net/uiimg/keellslogo.png',
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width * 0.7,
                )
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.025),
              child: RichText(
                text: TextSpan(
                  text: "Version v1.0.0",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins-Light",
                    fontSize: MediaQuery.of(context).size.height * 0.016,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
