import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class BottomBar extends StatelessWidget {
  double screenWidth;
  double screenHeight;
  BottomBar({this.screenWidth, this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        width: double.infinity,
        height: screenHeight * 0.103,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SocialMediaButtom(
              link: "https://github.com/wagle04",
              label: "Github",
              icon: Icon(FontAwesomeIcons.githubSquare),
            ),
            SocialMediaButtom(
              link: "https://www.linkedin.com/in/wagle04/",
              label: "LinkedIn",
              icon: Icon(FontAwesomeIcons.linkedin),
            ),
            SocialMediaButtom(
              link: "https://www.facebook.com/wagle04/",
              label: "Facebook",
              icon: Icon(FontAwesomeIcons.facebookSquare),
            ),
            SocialMediaButtom(
              link: "https://twitter.com/wagle04",
              label: "Twitter",
              icon: Icon(FontAwesomeIcons.twitterSquare),
            ),
            SocialMediaButtom(
              link: "https://www.instagram.com/_manish_wagle/",
              label: "Instagram",
              icon: Icon(FontAwesomeIcons.instagramSquare),
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaButtom extends StatelessWidget {
  final String link;
  final String label;
  final Icon icon;
  const SocialMediaButtom({Key key, this.link, this.label, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
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
          padding: EdgeInsets.all(10.0),
          child: icon,
        ),
      ),
    );
  }
}
