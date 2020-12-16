import 'package:flutter/material.dart';
import 'package:full_app/src/pages/slideshow_page.dart';

class LayoutModel with ChangeNotifier {
  Widget _currentPage = SlideShowPage();

  Widget get currentPage => this._currentPage;

  set currentPage(Widget value) {
    _currentPage = value;
    notifyListeners();
  }
}
