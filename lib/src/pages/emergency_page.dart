import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:animate_do/animate_do.dart';
import 'package:full_app/src/theme/theme.dart';
import 'package:full_app/src/widgets/boton_gordo.dart';
import 'package:full_app/src/widgets/headers.dart';
import 'package:provider/provider.dart';

class ItemBoton {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton(this.icon, this.texto, this.color1, this.color2);
}

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLarge;
    if (MediaQuery.of(context).size.height > 500) {
      isLarge = true;
    } else {
      isLarge = false;
    }
    final items = <ItemBoton>[
      new ItemBoton(FontAwesomeIcons.carCrash, 'Motor Accident',
          Color(0xff6989F5), Color(0xff906EF5)),
      new ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          Color(0xff66A9F2), Color(0xff536CF6)),
      new ItemBoton(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
          Color(0xffF2D572), Color(0xffE06AA3)),
      new ItemBoton(FontAwesomeIcons.biking, 'Awards', Color(0xff317183),
          Color(0xff46997D)),
      new ItemBoton(FontAwesomeIcons.carCrash, 'Motor Accident',
          Color(0xff6989F5), Color(0xff906EF5)),
      new ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          Color(0xff66A9F2), Color(0xff536CF6)),
      new ItemBoton(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
          Color(0xffF2D572), Color(0xffE06AA3)),
      new ItemBoton(FontAwesomeIcons.biking, 'Awards', Color(0xff317183),
          Color(0xff46997D)),
      new ItemBoton(FontAwesomeIcons.carCrash, 'Motor Accident',
          Color(0xff6989F5), Color(0xff906EF5)),
      new ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          Color(0xff66A9F2), Color(0xff536CF6)),
      new ItemBoton(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
          Color(0xffF2D572), Color(0xffE06AA3)),
      new ItemBoton(FontAwesomeIcons.biking, 'Awards', Color(0xff317183),
          Color(0xff46997D)),
    ];

    List<Widget> itemMap = items
        .map((item) => FadeInLeft(
              duration: Duration(milliseconds: 750),
              child: BotonGordo(
                icon: item.icon,
                texto: item.texto,
                color1: item.color1,
                color2: item.color2,
                onPress: () {
                  print('Push');
                },
              ),
            ))
        .toList();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          if (isLarge) _Encabezado(),
          //_Encabezado(),
          Container(
            margin:
                (isLarge) ? EdgeInsets.only(top: 245) : EdgeInsets.only(top: 0),
            child: SafeArea(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  //SizedBox(height: 200),
                  //BotonGordoTemp(),
                  ...itemMap
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Encabezado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return Stack(
      children: <Widget>[
        RawMaterialButton(
          onPressed: () => _mostrarAlert(context),
          shape: CircleBorder(),
          padding: EdgeInsets.all(15.0),
          child: IconHeader(
            icon: FontAwesomeIcons.plus,
            titulo: 'Asistencia Médica',
            subtitulo: 'Haz solicitado',
            color1: (appTheme == ThemeData.dark())
                ? Colors.green
                : Color(0xff536CF6),
            color2: (appTheme == ThemeData.dark())
                ? Colors.greenAccent
                : Color(0xff66A9F2),
          ),
        ),
        Positioned(
          right: 0,
          top: 45,
          child: RawMaterialButton(
            onPressed: () {},
            shape: CircleBorder(),
            padding: EdgeInsets.all(15.0),
            child: FaIcon(
              FontAwesomeIcons.ellipsisV,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('EMERGENCY'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Calling 911, hold on!'),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancel')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Ok'))
            ],
          );
        });
  }
}

class BotonGordoTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BotonGordo(
      icon: FontAwesomeIcons.calendarAlt,
      texto: 'Motor Accident',
      onPress: () {
        print('click aqui!');
      },
      //color1: Colors.blue,
      //color2: Colors.green,
      color3: Colors.yellow,
      color1: Color(0xff6989F5),
      color2: Color(0xff906EF5),
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.plus,
      titulo: 'Asistencia Médica',
      subtitulo: 'Haz solicitado',
      color1: Color(0xff526BF6),
      color2: Color(0xff67ACF2),
    );
  }
}
