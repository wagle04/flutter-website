import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/widgets/animatedbackground.dart';
import 'package:website/widgets/animatedtexts.dart';
import 'package:website/widgets/bottombar.dart';
import 'package:website/widgets/greetings.dart';
import 'package:website/widgets/imagecontainer.dart';
import 'package:website/widgets/topbar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: AnimatedBackGroundWidget(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                TopBar(screenWidth: screenWidth),
                Greetings(screenWidth: screenWidth),
                ImageContainer(screenWidth: screenWidth),
                AnimatedTexts(screenWidth: screenWidth),
                BottomBar(screenWidth: screenWidth),
              ],
            );
          },
        ),
      ),
    );
  }
}
