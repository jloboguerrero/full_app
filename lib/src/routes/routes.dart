import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/src/pages/circle_fill_page.dart';
import 'package:full_app/src/pages/cuadrado_page.dart';
import 'package:full_app/src/pages/emergency_page.dart';
import 'package:full_app/src/pages/headers_page.dart';
import 'package:full_app/src/pages/navegacion_page.dart';
import 'package:full_app/src/pages/pagina1_page.dart';
import 'package:full_app/src/pages/pinterest_page.dart';
import 'package:full_app/src/pages/slider_list_page.dart';

import 'package:full_app/src/pages/slideshow_page.dart';
import 'package:full_app/src/pages/twitter_page.dart';

final pageRoutes = <_Route>[
  _Route(FontAwesomeIcons.slideshare, 'Slideshow', SlideShowPage()),
  _Route(FontAwesomeIcons.ambulance, 'Emergencia', EmergencyPage()),
  _Route(FontAwesomeIcons.safari, 'Notificación', NavegacionPage()),
  _Route(FontAwesomeIcons.heading, 'Animate_do', Pagina1Page()),
  _Route(FontAwesomeIcons.twitter, 'Twitter', TwitterPage()),
  _Route(FontAwesomeIcons.solidSave, 'Slider', SliverListPage()),
  _Route(FontAwesomeIcons.font, 'Fondos', HeadersPage()),
  _Route(FontAwesomeIcons.pinterest, 'Pinterest', PinterestPage()),
  _Route(FontAwesomeIcons.square, 'Cuadrado', CuadradoPage()),
  _Route(FontAwesomeIcons.circleNotch, 'Circle_fill', GraficasCircularPage()),
];

class _Route {
  final IconData icon;
  final String titulo;
  final Widget page;

  _Route(this.icon, this.titulo, this.page);
}
