import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class BottomBar extends StatelessWidget {
  double screenWidth;
  BottomBar({this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SocialMediaButtom(
            link: "https://github.com/wagle04",
            label: "Github",
            icon: Icon(FontAwesomeIcons.githubSquare),
            screenWidth: screenWidth,
          ),
          SocialMediaButtom(
            link: "https://www.linkedin.com/in/wagle04/",
            label: "LinkedIn",
            icon: Icon(FontAwesomeIcons.linkedin),
            screenWidth: screenWidth,
          ),
          SocialMediaButtom(
            link: "https://www.facebook.com/wagle04/",
            label: "Facebook",
            icon: Icon(FontAwesomeIcons.facebookSquare),
            screenWidth: screenWidth,
          ),
          SocialMediaButtom(
            link: "https://twitter.com/wagle04",
            label: "Twitter",
            icon: Icon(FontAwesomeIcons.twitterSquare),
            screenWidth: screenWidth,
          ),
          SocialMediaButtom(
            link: "https://www.instagram.com/_manish_wagle/",
            label: "Instagram",
            icon: Icon(FontAwesomeIcons.instagramSquare),
            screenWidth: screenWidth,
          )
        ],
      ),
    );
  }
}

class SocialMediaButtom extends StatelessWidget {
  final String link;
  final String label;
  final Icon icon;
  final double screenWidth;
  const SocialMediaButtom(
      {Key key, this.link, this.label, this.icon, this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.001),
        child: RaisedButton(
          onPressed: () {
            html.window.open(link, label);
          },
          elevation: 0,
          color: Colors.transparent,
          hoverColor: Colors.red,
          shape: CircleBorder(),
          hoverElevation: 50,
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.002),
            child: icon,
          ),
        ),
      ),
    );
  }
}
