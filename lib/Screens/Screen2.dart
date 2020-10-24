import 'package:flutter/material.dart';

class UIAnim extends StatefulWidget {
  @override
  _UIAnimState createState() => _UIAnimState();
}

class _UIAnimState extends State<UIAnim> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation, _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget child) {
        return Scaffold();
      },
    );
  }
}
