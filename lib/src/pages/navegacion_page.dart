import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/src/theme/theme.dart';
import 'package:provider/provider.dart';

class NavegacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return ChangeNotifierProvider(
      create: (_) => new _NotificationModel(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:
              (appTheme == ThemeData.dark()) ? Colors.greenAccent : Colors.blue,
          title: Text('Notifications Page'),
        ),
        floatingActionButton: BotonFlotante(),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}

class BotonFlotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return FloatingActionButton(
      child: FaIcon(
        FontAwesomeIcons.plus,
        color: Colors.white,
      ),
      backgroundColor:
          (appTheme == ThemeData.dark()) ? Colors.greenAccent : Colors.blue,
      onPressed: () {
        int numero =
            Provider.of<_NotificationModel>(context, listen: false).numero;
        numero++;
        Provider.of<_NotificationModel>(context, listen: false).numero = numero;

        if (numero >= 2) {
          final controller =
              Provider.of<_NotificationModel>(context, listen: false)
                  .bounceController;

          controller.forward(from: 0.0);
        }
      },
    );
  }
}

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int numero = Provider.of<_NotificationModel>(context).numero;
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor:
          (appTheme == ThemeData.dark()) ? Colors.greenAccent : Colors.blue,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.bone),
          label: 'Bones',
        ),
        BottomNavigationBarItem(
          label: 'Notifications',
          icon: Stack(
            children: <Widget>[
              FaIcon(FontAwesomeIcons.bell),
              Positioned(
                top: 0.0,
                right: 0.0,
                //child: FaIcon(Icons.brightness_1, size: 8, color: Colors.redAccent),
                child: BounceInDown(
                  from: 12,
                  animate: (numero > 0) ? true : false,
                  child: Bounce(
                    from: 12,
                    duration: Duration(milliseconds: 450),
                    controller: (controller) =>
                        Provider.of<_NotificationModel>(context)
                            .bounceController = controller,
                    child: Container(
                      child: Text(
                        '$numero',
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                      alignment: Alignment.center,
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.dog),
          label: 'My dog',
        ),
      ],
    );
  }
}

class _NotificationModel extends ChangeNotifier {
  int _numero = 0;
  AnimationController _bounceController;

  int get numero => this._numero;

  set numero(int valor) {
    this._numero = valor;
    notifyListeners();
  }

  AnimationController get bounceController => this._bounceController;

  set bounceController(AnimationController controller) {
    this._bounceController = controller;
    notifyListeners();
  }
}
