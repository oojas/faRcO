import 'package:flutter/material.dart';

class bro extends StatefulWidget {
  @override
  _broState createState() => _broState();
}

class _broState extends State<bro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'background',
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orange, Colors.deepOrangeAccent],
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight)),
          ),
        ),
      ),
    );
  }
}

class bro1 extends StatefulWidget {
  @override
  _bro1State createState() => _bro1State();
}

class _bro1State extends State<bro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'background1',
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orange, Colors.deepOrangeAccent],
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight)),
          ),
        ),
      ),
    );
  }
}
