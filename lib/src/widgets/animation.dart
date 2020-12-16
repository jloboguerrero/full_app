import 'package:flutter/material.dart';

import 'dart:math' as Math;

class AnimacionesSimplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoSimpleAnimado(),
      ),
    );
  }
}

class CuadradoSimpleAnimado extends StatefulWidget {
  @override
  _CuadradoAnimadoSimpleState createState() => _CuadradoAnimadoSimpleState();
}

class _CuadradoAnimadoSimpleState extends State<CuadradoSimpleAnimado>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> rotacion;

  @override
  void initState() {
    controller = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    rotacion = Tween(begin: 0.0, end: 2.0 * Math.pi).animate(controller);

    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        //controller.repeat();
        controller.reverse();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Play / Reproduccion
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget childRectangulo) {
        print('rotacion: ' + rotacion.value.toString());
        return Transform.rotate(
          angle: rotacion.value,
          child: childRectangulo,
        );
      },
    );
  }
}

class AnimacionesScalePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoScaleAnimado(),
      ),
    );
  }
}

class CuadradoScaleAnimado extends StatefulWidget {
  @override
  _CuadradoAnimadoScaleState createState() => _CuadradoAnimadoScaleState();
}

class _CuadradoAnimadoScaleState extends State<CuadradoScaleAnimado>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> agrandar;

  @override
  void initState() {
    controller = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    agrandar = agrandar = Tween(begin: 0.0, end: 2.0).animate(controller);

    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        //controller.repeat();
        controller.reverse();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Play / Reproduccion
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget childRectangulo) {
        print('sacle: ' + agrandar.value.toString());
        return Transform.scale(
          scale: agrandar.value,
          child: childRectangulo,
        );
      },
    );
  }
}

class AnimacionesSimple2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoSimpleAnimado2(),
      ),
    );
  }
}

class CuadradoSimpleAnimado2 extends StatefulWidget {
  @override
  _CuadradoAnimadoSimple2State createState() => _CuadradoAnimadoSimple2State();
}

class _CuadradoAnimadoSimple2State extends State<CuadradoSimpleAnimado2>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> rotacion2;

  @override
  void initState() {
    controller = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    rotacion2 = Tween(begin: 0.0, end: 1.0 * Math.pi).animate(controller);

    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        //controller.repeat();
        controller.reverse();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Play / Reproduccion
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget childRectangulo) {
        print('rotacion: ' + rotacion2.value.toString());
        return Transform.rotate(
          angle: rotacion2.value,
          child: childRectangulo,
        );
      },
    );
  }
}

class AnimacionesDerechaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoDerechaAnimado(),
      ),
    );
  }
}

class CuadradoDerechaAnimado extends StatefulWidget {
  @override
  _CuadradoDerechaAnimadoState createState() => _CuadradoDerechaAnimadoState();
}

class _CuadradoDerechaAnimadoState extends State<CuadradoDerechaAnimado>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> moverDerecha;

  @override
  void initState() {
    controller = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    moverDerecha = Tween(begin: 0.0, end: 260.0).animate(controller);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Play / Reproduccion
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget childRectangulo) {
        print('translacion: ' + moverDerecha.value.toString());
        return Transform.translate(
          offset: Offset(moverDerecha.value, 0),
          child: childRectangulo,
        );
      },
    );
  }
}

class AnimacionesOpacityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoOpacityAnimado(),
      ),
    );
  }
}

class CuadradoOpacityAnimado extends StatefulWidget {
  @override
  _CuadradoAnimadoOpacityState createState() => _CuadradoAnimadoOpacityState();
}

class _CuadradoAnimadoOpacityState extends State<CuadradoOpacityAnimado>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> opacity;

  @override
  void initState() {
    controller = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    opacity = Tween(begin: 1.0, end: 0.1).animate(controller);

    controller.addListener(() {
      print('Status: ${controller.status}');
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Play / Reproduccion
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget childRectangulo) {
        print('opacity: ' + opacity.value.toString());
        return Opacity(
          opacity: opacity.value,
          child: childRectangulo,
        );
      },
    );
  }
}

class AnimacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {
  @override
  _CuadradoAnimadoState createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> rotacion;
  Animation<double> opacidad;
  Animation<double> opacidadOut;
  Animation<double> moverDerecha;
  Animation<double> agrandar;

  @override
  void initState() {
    controller = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    //rotacion = Tween(begin: 0.0, end: 2.0 * Math.pi).animate(controller);
    rotacion = Tween(begin: 0.0, end: 2.0 * Math.pi)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));

    //opacidad = Tween(begin: 0.1, end: 1.0).animate(controller);
    opacidad = Tween(begin: 0.2, end: 1.0).animate(CurvedAnimation(
        parent: controller, curve: Interval(0.0, 0.25, curve: Curves.easeOut)));
    //opacidadOut = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
    //  parent: controller, curve: Interval(0.75, 1.0, curve: Curves.easeOut)));
    opacidadOut = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: controller, curve: Interval(0.60, 1.0, curve: Curves.easeOut)));

    //moverDerecha = Tween(begin: 0.0, end: 200.0).animate(controller);
    moverDerecha = Tween(begin: 0.0, end: 260.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

    agrandar = Tween(begin: 0.0, end: 2.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

    controller.addListener(() {
      //print('Status: ${controller.status}');
      if (controller.status == AnimationStatus.completed) {
        controller.reverse();
        //controller.repeat();
      }
      //else if (controller.status == AnimationStatus.dismissed) {
      //controller.forward();
      //}
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Play / Reproduccion
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget childRectangulo) {
        //print('rotacion: ' + rotacion.value.toString());

        print('Opacidad: ${opacidad.value}');
        print('Opacidad: ${rotacion.value}');

        return Transform.translate(
          offset: Offset(moverDerecha.value, 0),
          child: Transform.rotate(
            angle: rotacion.value,
            child: Opacity(
              opacity: opacidadOut.value,
              child: Opacity(
                //opacity: opacidad.value - opacidadOut.value,
                opacity: opacidad.value,
                child: Transform.scale(
                  scale: agrandar.value,
                  child: childRectangulo,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class CuadradoAnimadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _CuadradoAnimado(),
      ),
    );
  }
}

class _CuadradoAnimado extends StatefulWidget {
  @override
  __CuadradoAnimadoState createState() => __CuadradoAnimadoState();
}

class __CuadradoAnimadoState extends State<_CuadradoAnimado>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  // animaciones
  Animation<double> moverDerecha;
  Animation<double> moverArriba;
  Animation<double> moverIzquierda;
  Animation<double> moverAbajo;

  @override
  void initState() {
    // TODO: implement initState
    controller = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4500),
    );

    moverDerecha = Tween(begin: 0.0, end: 100.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, 0.25, curve: Curves.bounceOut)));

    moverArriba = Tween(begin: 0.0, end: 100.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(0.25, 0.5, curve: Curves.bounceOut)));

    moverIzquierda = Tween(begin: 0.0, end: 100.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(0.5, 0.75, curve: Curves.bounceOut)));

    moverAbajo = Tween(begin: 0.0, end: 100.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(0.75, 1.0, curve: Curves.bounceOut)));

    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        controller.repeat();
        //controller.reverse();
      }
    });

    super.initState();
    // inicializar todo
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Play
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget childRectangulo) {
        print(' Mover: ${moverDerecha.value} ');
        print(' Mover: ${moverArriba.value} ');
        print(' Mover: ${moverIzquierda.value} ');
        print(' Mover: ${moverAbajo.value} ');

        return Transform.translate(
          offset: Offset(moverDerecha.value - moverIzquierda.value,
              -moverArriba.value + moverAbajo.value),
          child: childRectangulo,
        );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(color: Colors.greenAccent),
      ),
    );
  }
}
