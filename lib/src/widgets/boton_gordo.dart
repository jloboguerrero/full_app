import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  final IconData icon;
  @required
  final String texto;
  final Color color1;
  final Color color2;
  final Color color3;
  @required
  final Function onPress;

  BotonGordo({
    this.icon: FontAwesomeIcons.carCrash,
    this.texto,
    this.color3: Colors.white,
    this.color1: Colors.grey,
    this.color2: Colors.blueGrey,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _BotonGordoBackground(
          icon: icon,
          color1: color1,
          color2: color2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 140,
              width: 60,
            ),
            FaIcon(
              icon,
              size: 30,
              color: color3,
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: FlatButton(
                onPressed: onPress,
                child: Text(
                  texto,
                  style: TextStyle(
                    color: color3,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            FlatButton.icon(
              onPressed: onPress,
              label: Text(''),
              icon: FaIcon(
                FontAwesomeIcons.chevronRight,
                size: 30,
                color: color3,
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ],
    );
  }
}

class _BotonGordoBackground extends StatelessWidget {
  final IconData icon;
  final Color color1;
  final Color color2;

  _BotonGordoBackground({
    this.icon,
    this.color1,
    this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: <Widget>[
            Positioned(
              right: -20,
              top: -25,
              child: FaIcon(
                icon,
                size: 150,
                color: Colors.white.withOpacity(0.2),
              ),
            )
          ],
        ),
      ),
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(4, 6),
                blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: <Color>[
              color1,
              color2,
            ],
          )),
    );
  }
}
