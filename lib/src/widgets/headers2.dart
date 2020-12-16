import 'package:flutter/material.dart';
import 'package:full_app/src/theme/theme.dart';
import 'package:provider/provider.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: _HeaderCuadrado(appTheme),
      ),
    );
  }
}

class _HeaderCuadrado extends CustomPainter {
  @override
  final appTheme;
  _HeaderCuadrado(this.appTheme);

  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();

    lapiz.color =
        (appTheme == ThemeData.dark()) ? Colors.greenAccent : Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            color: (appTheme == ThemeData.dark())
                ? Colors.greenAccent
                : Color(0xff615AAB),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70))),
      ),
    );
  }
}

class HeaderDiagonalGood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(appTheme),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  final appTheme;

  _HeaderDiagonalPainter(this.appTheme);

  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();

    _HeaderDiagonalPainter(this.appTheme);

    // Propiedades
    lapiz.color =
        (appTheme == ThemeData.dark()) ? Colors.greenAccent : Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTrianguloPainter(appTheme),
      ),
    );
  }
}

class _HeaderTrianguloPainter extends CustomPainter {
  @override
  final appTheme;

  _HeaderTrianguloPainter(this.appTheme);

  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();

    // Propiedades
    lapiz.color =
        (appTheme == ThemeData.dark()) ? Colors.greenAccent : Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTrianguloInvertido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTrianguloInvertidoPainter(appTheme),
      ),
    );
  }
}

class _HeaderTrianguloInvertidoPainter extends CustomPainter {
  @override
  final appTheme;

  _HeaderTrianguloInvertidoPainter(this.appTheme);

  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();

    // Propiedades
    lapiz.color =
        (appTheme == ThemeData.dark()) ? Colors.greenAccent : Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPicoPainter(appTheme),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  final appTheme;

  _HeaderPicoPainter(this.appTheme);

  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();

    // Propiedades
    lapiz.color =
        (appTheme == ThemeData.dark()) ? Colors.greenAccent : Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.5, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(appTheme),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  final appTheme;

  _HeaderCurvoPainter(this.appTheme);
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();

    // Propiedades
    lapiz.color =
        (appTheme == ThemeData.dark()) ? Colors.greenAccent : Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.50, size.width, size.height * 0.20);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvoInvertido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoInvertidoPainter(appTheme),
      ),
    );
  }
}

class _HeaderCurvoInvertidoPainter extends CustomPainter {
  @override
  final appTheme;

  _HeaderCurvoInvertidoPainter(this.appTheme);
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();

    // Propiedades
    lapiz.color =
        (appTheme == ThemeData.dark()) ? Colors.greenAccent : Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.15, size.height * 0.08, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaveInvertido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWaveInvertidoPainter(appTheme),
      ),
    );
  }
}

class _HeaderWaveInvertidoPainter extends CustomPainter {
  @override
  final appTheme;

  _HeaderWaveInvertidoPainter(this.appTheme);
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();

    // Propiedades
    lapiz.color =
        (appTheme == ThemeData.dark()) ? Colors.greenAccent : Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.75,
        size.width * 0.5, size.height * 0.85);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.95, size.width, size.height * 0.85);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavePainter(appTheme),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  final appTheme;

  _HeaderWavePainter(this.appTheme);
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();

    // Propiedades
    lapiz.color =
        (appTheme == ThemeData.dark()) ? Colors.greenAccent : Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.45);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.55,
        size.width * 0.5, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.35, size.width, size.height * 0.45);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaveGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final Rect rect =
        new Rect.fromCircle(center: Offset(0.0, 125.0), radius: 180);

    final Gradient gradiente = new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xff6D05E8),
          Color(0xffC012FF),
          Color(0xff6D05FA),
        ],
        stops: [
          0.2,
          0.5,
          1.8,
        ]);

    final lapiz = Paint()..shader = gradiente.createShader(rect);

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; // .fill
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.45);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.55,
        size.width * 0.5, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.35, size.width, size.height * 0.45);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
