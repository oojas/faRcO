import 'package:flutter/material.dart';

class UIAnim extends StatefulWidget {
  @override
  _UIAnimState createState() => _UIAnimState();
}

class _UIAnimState extends State<UIAnim> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation,
      _animation,
      _animation1,
      _animation2,
      _animation3,
      _animation4,
      _animation5,
      _animation6,
      _animation7;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
    _animation = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation1 = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation2 = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation3 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation4 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation5 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation6 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _animation7 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    _controller.forward();
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text('Unit 3',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87)),
              centerTitle: true,
              elevation: 0,
              leading: Icon(
                Icons.arrow_back,
                color: Colors.black87,
              ),
            ),
            body: Container(
                margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Transform(
                      transform: Matrix4.translationValues(
                          width * animation.value, 0, 0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Job Interview',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black87),
                          ),
                        ),
                        alignment: Alignment.centerLeft,
                        width: 390,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue,
                              ),
                              BoxShadow(color: Colors.lightBlue.shade900)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(
                              width * _animation.value,
                              height * _animation.value,
                              height * _animation.value),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.card_giftcard_sharp,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Flash Cards',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                )
                              ],
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              0, height * _animation1.value, 0),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.book,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Writing',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                )
                              ],
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              _animation2.value * width,
                              _animation2.value * height,
                              0),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.speaker,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Listening',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(
                              _animation3.value * width,
                              _animation3.value * height,
                              0),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.speaker_notes,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Speaking',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                )
                              ],
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              _animation4.value * width,
                              _animation4.value * height,
                              0),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.fiber_new_sharp,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Matching',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                )
                              ],
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              _animation5.value * width,
                              _animation5.value * height,
                              0),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.file_copy,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Test',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Transform(
                      transform: Matrix4.translationValues(
                          _animation6.value * width, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            width: 390,
                            height: 110,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.blue.shade200,
                                  Colors.pink.shade200
                                ]),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    'Keep Improving !',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 19.0),
                                  child: Text(
                                    'Your current score',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Text(
                          'Overview',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Transform(
                      transform: Matrix4.translationValues(
                          _animation7.value * width, 0, 0),
                      child: Container(
                        width: 380,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.shade100,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 25),
                              child: Text(
                                'Learned phases',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Phrases left to learn',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            ),
                            SizedBox(height: 25),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Total learning time',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )));
      },
    );
  }
}
