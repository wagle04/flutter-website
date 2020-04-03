import 'package:flutter/material.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({
    Key key,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

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
    var multiplier = widget.screenWidth < 500 ? 0.25 : 0.078125;
    var height = widget.screenWidth < 500
        ? widget.screenWidth * 0.5
        : widget.screenWidth * 0.15;
    var width = widget.screenWidth < 500
        ? widget.screenWidth * 0.5
        : widget.screenWidth * 0.15;
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              _radius.value * widget.screenWidth * multiplier),
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
