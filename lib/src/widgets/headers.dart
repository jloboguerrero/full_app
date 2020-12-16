import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconHeader extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;

  const IconHeader({
    @required this.icon,
    @required this.titulo,
    @required this.subtitulo,
    this.color1 = Colors.grey,
    this.color2 = Colors.blueGrey,
  });

  @override
  Widget build(BuildContext context) {
    final Color colorBlanco = Colors.white.withOpacity(0.7);

    return Stack(
      children: <Widget>[
        _IconHeaderBackground(
          color1: this.color1,
          color2: this.color2,
        ),
        Positioned(
          top: -50,
          left: -70,
          child: FaIcon(
            this.icon,
            size: 250,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 70,
              width: double.infinity,
            ),
            Text(
              this.subtitulo,
              style: TextStyle(fontSize: 20, color: colorBlanco),
            ),
            SizedBox(height: 20),
            Text(
              this.titulo,
              style: TextStyle(
                fontSize: 30,
                color: colorBlanco,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            FaIcon(
              this.icon,
              size: 80,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {
  final Color color1;
  final Color color2;

  const _IconHeaderBackground({
    this.color1,
    this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: _HeaderCuadrado(color1, color2),
      ),
    );
  }
}

class _HeaderCuadrado extends CustomPainter {
  final Color color1;
  final Color color2;

  _HeaderCuadrado(
    this.color1,
    this.color2,
  );

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(center: Offset(0.0, 125.0), radius: 100);

    final Gradient gradiente = new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          this.color1,
          this.color2,
        ]);

    final lapiz = Paint()..shader = gradiente.createShader(rect);

    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.06, size.height * 0.40,
        size.width * 0.20, size.height * 0.40);
    path.lineTo(size.width, size.height * 0.40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
