import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_app/src/theme/theme.dart';

import 'package:full_app/src/widgets/slideshow.dart';
import 'package:provider/provider.dart';

class SlideShowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLarge;
    if (MediaQuery.of(context).size.height > 500) {
      isLarge = true;
    } else {
      isLarge = false;
    }

    return Scaffold(
      //backgroundColor: Colors.purple,
      // body: Column(
      //   children: <Widget>[
      //     Expanded(child: MiSlideShow()),
      //   //Expanded(child: MiSlideShow()),
      //   ],
      // )
      body: (isLarge)
          ? Column(
              children: <Widget>[
                Expanded(child: MiSlideShow()),
                Expanded(child: MiSlideShow()),
                Expanded(child: MiSlideShow())
              ],
            )
          : Column(
              children: <Widget>[
                Expanded(child: MiSlideShow()),
              ],
            ),
    );
  }
}

class MiSlideShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return SlideShow(
      bulletPrimario: 15,
      puntosArriba: false,
      colorPrimario:
          (appTheme == ThemeData.dark()) ? Colors.greenAccent : Colors.blue,
      colorSecundario: Colors.grey,
      tamano: 10,
      slides: (appTheme == ThemeData.dark())
          ? <Widget>[
              SvgPicture.asset('assets/svgs/slide6.svg'),
              SvgPicture.asset('assets/svgs/slide7.svg'),
              SvgPicture.asset('assets/svgs/slide8.svg'),
              SvgPicture.asset('assets/svgs/slide9.svg'),
              SvgPicture.asset('assets/svgs/slide10.svg'),
            ]
          : <Widget>[
              SvgPicture.asset('assets/svgs/slide1.svg'),
              SvgPicture.asset('assets/svgs/slide2.svg'),
              SvgPicture.asset('assets/svgs/slide3.svg'),
              SvgPicture.asset('assets/svgs/slide4.svg'),
              SvgPicture.asset('assets/svgs/slide5.svg'),
            ],
    );
  }
}
