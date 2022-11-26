import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_tour/screens/home_screen.dart';
import 'package:travel_tour/widgets/login_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  void initState () {
    super.initState();
    welcomescreenStart ();
  }

  welcomescreenStart () async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyLogin()),
      );
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xff6d9fcc),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Icon(
              Icons.location_on,
              size: 100.0,
              color: Colors.white,
            ),

            SizedBox(height: 24.0,),

            Text("PINPOIN",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),

          ],
        ),
      ),
    );
  }

}