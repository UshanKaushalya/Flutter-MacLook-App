import 'package:flutter/material.dart';
import 'package:sample_app_1/main.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {

  Widget welcomeScreenImg(){
    return SizedBox(
      height: 600,
      child: Image.asset(
        "assets/welcome_screen_bg.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  Widget welcomeScreenTwoTexts(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        const Positioned(
          top: 50,
          child: Text(
            'Welcome',
            style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Helvetica'
            ),
          ),
        ),
        Positioned(
          top: 64.0,
          child: Text(
            'MacLook',
            style: TextStyle(
              fontSize: 55.0,
              fontWeight: FontWeight.bold,
              color: accent,
              shadows: [
                Shadow(
                  offset: const Offset(0.0, 2.0),
                  blurRadius: 10.0,
                  color: accent.withOpacity(0.6),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          welcomeScreenImg(),
           Expanded(
            child: Center(
              child: welcomeScreenTwoTexts(),
            ),
          ),
        ],
      ),
    );
  }
}
