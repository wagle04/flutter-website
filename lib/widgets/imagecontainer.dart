import 'package:flutter/material.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({
    Key key,
    @required this.screenWidth,
    this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer>
    with TickerProviderStateMixin {
  AnimationController _animationController;

  Animation<double> _radius;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    )..repeat(reverse: true);
    _radius = Tween(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.screenWidth * 0.15,
      width: widget.screenWidth * 0.15,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              _radius.value * widget.screenWidth * 0.078125),
          border: Border.all(color: Colors.white, width: 1),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/photo.jpg"),
          ),
        ),
      ),
    );
  }
}
