import 'package:flutter/material.dart';
import 'package:full_app/src/theme/theme.dart';

import 'package:full_app/src/widgets/headers2.dart';
import 'package:provider/provider.dart';

class HeadersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return Scaffold(
      backgroundColor:
          (appTheme == ThemeData.dark()) ? Colors.black : Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: PageView(
          //physics: BouncingScrollPhysics(),
          children: <Widget>[
            HeaderCuadrado(),
            HeaderBordesRedondeados(),
            HeaderDiagonalGood(),
            HeaderTriangulo(),
            HeaderTrianguloInvertido(),
            HeaderPico(),
            HeaderCurvo(),
            HeaderCurvoInvertido(),
            HeaderWaveInvertido(),
            HeaderWave(),
            HeaderWaveGradient(),
          ],
        ),
      ),
    );
  }
}
