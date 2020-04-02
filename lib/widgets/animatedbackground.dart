import 'package:flutter/material.dart';

class AnimatedBackGroundWidget extends StatefulWidget {
  final child;

  const AnimatedBackGroundWidget({this.child});

  @override
  _AnimatedBackGroundWidgetState createState() =>
      _AnimatedBackGroundWidgetState();
}

class _AnimatedBackGroundWidgetState extends State<AnimatedBackGroundWidget>
    with TickerProviderStateMixin {
  Animatable<Color> backGround = TweenSequence<Color>(
    [
      TweenSequenceItem(
        weight: 1,
        tween: ColorTween(
          begin: Colors.red[300],
          end: Colors.green[300],
        ),
      ),
      TweenSequenceItem(
        weight: 1,
        tween: ColorTween(
          begin: Colors.green[300],
          end: Colors.blue[300],
        ),
      ),
      TweenSequenceItem(
        weight: 1,
        tween: ColorTween(
          begin: Colors.blue[300],
          end: Colors.red[300],
        ),
      ),
    ],
  );

  Animatable<Color> backGround2 = TweenSequence<Color>(
    [
      TweenSequenceItem(
        weight: 1,
        tween: ColorTween(
          begin: Colors.blue[300],
          end: Colors.red[300],
        ),
      ),
      TweenSequenceItem(
        weight: 1,
        tween: ColorTween(
          begin: Colors.red[300],
          end: Colors.green[300],
        ),
      ),
      TweenSequenceItem(
        weight: 1,
        tween: ColorTween(
          begin: Colors.green[300],
          end: Colors.blue[300],
        ),
      ),
    ],
  );

  AnimationController _animationController;
  AnimationController _animationController2;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    )..repeat();
    _animationController2 = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                backGround.evaluate(
                  AlwaysStoppedAnimation(_animationController.value),
                ),
                backGround2.evaluate(
                  AlwaysStoppedAnimation(_animationController2.value),
                ),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}
