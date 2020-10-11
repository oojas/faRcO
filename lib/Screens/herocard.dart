import 'package:animated_text/animated_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Borrower.dart';

class hero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (context, a, b) => bro()));
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ClipPath(
                      clipper: myclipper(),
                      child: Hero(
                        tag: 'background',
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Colors.orange,
                                Colors.deepOrangeAccent
                              ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight)),
                          child: AnimatedText(
                            alignment: Alignment.center,
                            speed: Duration(milliseconds: 1000),
                            controller: AnimatedTextController.loop,
                            displayTime: Duration(milliseconds: 1000),
                            wordList: ['Active', 'Loans'],
                            textStyle: GoogleFonts.slackey(
                                fontSize: 40, color: Colors.white),
                            onAnimate: (index) {
                              print("Animating index:" + index.toString());
                            },
                            onFinished: () {
                              print("Animtion finished");
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'lib/Assets/money.png',
                      scale: 2.5,
                    ))
              ],
            ),
            Divider(
              height: 10,
            ),
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (context, a, b) => bro1()));
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: myclipper(),
                      child: Hero(
                        tag: 'background1',
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Colors.orange,
                                Colors.deepOrangeAccent
                              ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight)),
                          child: AnimatedText(
                            alignment: Alignment.center,
                            speed: Duration(milliseconds: 1000),
                            controller: AnimatedTextController.loop,
                            displayTime: Duration(milliseconds: 1000),
                            wordList: ['Active', 'Proposals'],
                            textStyle: GoogleFonts.slackey(
                                fontSize: 40, color: Colors.white),
                            onAnimate: (index) {
                              print("Animating index:" + index.toString());
                            },
                            onFinished: () {
                              print("Animtion finished");
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'lib/Assets/money.png',
                      scale: 2.5,
                    ))
              ],
            )
          ],
        ));
  }
}

class myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 50.0;
    var path = Path();
    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height - roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.lineTo(size.width - roundnessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    path.lineTo(size.width, roundnessFactor * 2);
    path.quadraticBezierTo(
        size.width, 0, size.width - roundnessFactor * 3, roundnessFactor * 2);
    path.lineTo(roundnessFactor, size.height * 0.33 + 10);
    path.quadraticBezierTo(0, size.height * 0.33 + roundnessFactor, 0,
        size.height * 0.33 + roundnessFactor * 2);
    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class hero1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (context, a, b) => bro()));
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ClipPath(
                      clipper: myclipper(),
                      child: Hero(
                        tag: 'background',
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Colors.orange,
                                Colors.deepOrangeAccent
                              ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight)),
                          child: AnimatedText(
                            alignment: Alignment.center,
                            speed: Duration(milliseconds: 1000),
                            controller: AnimatedTextController.loop,
                            displayTime: Duration(milliseconds: 1000),
                            wordList: ['Paid', 'Proposal'],
                            textStyle: GoogleFonts.slackey(
                                fontSize: 40, color: Colors.white),
                            onAnimate: (index) {
                              print("Animating index:" + index.toString());
                            },
                            onFinished: () {
                              print("Animtion finished");
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'lib/Assets/money.png',
                      scale: 2.5,
                    ))
              ],
            ),
            Divider(
              height: 10,
            ),
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (context, a, b) => bro1()));
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: myclipper(),
                      child: Hero(
                        tag: 'background1',
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Colors.orange,
                                Colors.deepOrangeAccent
                              ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight)),
                          child: AnimatedText(
                            alignment: Alignment.center,
                            speed: Duration(milliseconds: 1000),
                            controller: AnimatedTextController.loop,
                            displayTime: Duration(milliseconds: 1000),
                            wordList: ['Requested', 'Active', 'Proposals'],
                            textStyle: GoogleFonts.slackey(
                                fontSize: 40, color: Colors.white),
                            onAnimate: (index) {
                              print("Animating index:" + index.toString());
                            },
                            onFinished: () {
                              print("Animtion finished");
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'lib/Assets/money.png',
                      scale: 2.5,
                    ))
              ],
            )
          ],
        ));
  }
}
