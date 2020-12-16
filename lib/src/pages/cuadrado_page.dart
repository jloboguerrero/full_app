import 'package:flutter/material.dart';

import 'package:full_app/src/widgets/animation.dart';

class CuadradoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: _Slides(),
            ),
            _Dots(),
          ],
        ),
      ),
    );
  }
}

class _Slides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        children: <Widget>[
          CuadradoOpacityAnimado(),
          AnimacionesSimplePage(),
          CuadradoSimpleAnimado2(),
          CuadradoDerechaAnimado(),
          AnimacionesScalePage(),
          AnimacionesPage(),
          CuadradoAnimadoPage(),
        ],
      ),
    );
  }
}

class _Dots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _Dot(),
          _Dot(),
          _Dot(),
          _Dot(),
          _Dot(),
          _Dot(),
          _Dot(),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
