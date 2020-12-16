import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/src/theme/theme.dart';
import 'package:provider/provider.dart';

class TwitterPage extends StatefulWidget {
  @override
  _TwitterPageState createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {
  bool activar = false;

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return Scaffold(
      floatingActionButton: BounceInRight(
        delay: Duration(milliseconds: 1500),
        duration: Duration(milliseconds: 300),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              activar = true;
              print('click');
            });
          },
          backgroundColor: (appTheme == ThemeData.dark())
              ? Colors.greenAccent
              : Colors.lightBlue,
          child: FaIcon(FontAwesomeIcons.play),
        ),
      ),
      backgroundColor: (appTheme == ThemeData.dark())
          ? Colors.greenAccent
          : Color(0xff1DA1F2),
      body: Center(
        child: ZoomOut(
          animate: activar,
          from: 40,
          //delay: Duration(milliseconds: 200),
          duration: Duration(seconds: 1),
          child: FaIcon(
            FontAwesomeIcons.twitter,
            color: (appTheme == ThemeData.dark()) ? Colors.black : Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
