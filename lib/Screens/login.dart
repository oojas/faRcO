import 'package:faRcO/Screens/herocard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginB extends StatefulWidget {
  @override
  _loginBState createState() => _loginBState();
}

class _loginBState extends State<loginB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: GoogleFonts.averageSans(
              fontSize: 35, fontStyle: FontStyle.italic, color: Colors.brown),
        ),
        backgroundColor: Colors.brown.shade200,
        elevation: 23,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Profile',
                  style: GoogleFonts.secularOne(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
              ),
            ),
            Expanded(child: hero()),
          ],
        ),
      ),
    );
  }
}

class loginL extends StatefulWidget {
  @override
  _loginLState createState() => _loginLState();
}

class _loginLState extends State<loginL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: GoogleFonts.averageSans(
              fontSize: 35, fontStyle: FontStyle.italic, color: Colors.brown),
        ),
        backgroundColor: Colors.brown.shade200,
        elevation: 23,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Profile',
                  style: GoogleFonts.secularOne(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
              ),
            ),
            Expanded(child: hero1()),
          ],
        ),
      ),
    );
  }
}
