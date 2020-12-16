import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/src/pages/navegacion_page.dart';
import 'package:full_app/src/pages/twitter_page.dart';
import 'package:full_app/src/theme/theme.dart';
import 'package:provider/provider.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            (appTheme == ThemeData.dark()) ? Colors.greenAccent : Colors.blue,
        title: ElasticIn(
          delay: Duration(milliseconds: 1500),
          duration: Duration(milliseconds: 800),
          child: Text('Animate_do'),
        ),
        actions: <Widget>[
          BounceInUp(
            delay: Duration(milliseconds: 1600),
            duration: Duration(milliseconds: 800),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.twitter),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => TwitterPage()));
              },
            ),
          ),
          ElasticInLeft(
            delay: Duration(milliseconds: 1700),
            duration: Duration(milliseconds: 800),
            child: IconButton(
              icon: FaIcon(Icons.navigate_next),
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => Pagina1Page()));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: SlideInLeft(
        from: 900,
        delay: Duration(milliseconds: 1400),
        duration: Duration(milliseconds: 800),
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => NavegacionPage()));
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInLeft(
                delay: Duration(milliseconds: 1700),
                duration: Duration(milliseconds: 800),
                child: Icon(Icons.new_releases,
                    color: (appTheme == ThemeData.dark())
                        ? Colors.greenAccent
                        : Colors.blue,
                    size: 40)),
            FadeInDown(
              delay: Duration(milliseconds: 2000),
              duration: Duration(milliseconds: 800),
              child: Text(
                'Titulo',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
              ),
            ),
            FadeInRight(
              delay: Duration(milliseconds: 2500),
              duration: Duration(milliseconds: 800),
              child: Text(
                'Soy un texto pequeño',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            FadeInUp(
              delay: Duration(milliseconds: 3000),
              duration: Duration(milliseconds: 800),
              child: Container(
                width: 200,
                height: 2,
                color: (appTheme == ThemeData.dark())
                    ? Colors.greenAccent
                    : Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
