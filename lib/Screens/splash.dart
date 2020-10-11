import 'package:faRcO/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:sleek_button/sleek_button.dart';

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'faRcO',
          style: GoogleFonts.rammettoOne(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            color: Colors.brown.shade900,
          ),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.brown.shade500,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'lib/Assets/farmer.png',
          ),
          SleekButton(
              onTap: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.slide_up,
                    builder: (context) => loginB()));
              },
              style: SleekButtonStyle.outlined(
                color: Colors.brown.shade300,
                inverted: true,
                rounded: true,
                size: SleekButtonSize.big,
                context: context,
              ),
              child: Text('Borrow Money?')),
          SleekButton(
              onTap: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.slide_up,
                    builder: (context) => loginL()));
              },
              style: SleekButtonStyle.outlined(
                color: Colors.brown.shade300,
                inverted: true,
                rounded: true,
                size: SleekButtonSize.big,
                context: context,
              ),
              child: Text('Lend Money?')),
        ],
      ),
    );
  }
}
