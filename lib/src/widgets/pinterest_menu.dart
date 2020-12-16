import 'package:flutter/material.dart';
import 'package:full_app/src/theme/theme.dart';
import 'package:provider/provider.dart';

class PinterestButton {
  final Function onPressed;
  final IconData icon;

  PinterestButton({
    @required this.onPressed,
    @required this.icon,
  });
}

class PinterestMenu extends StatelessWidget {
  final bool mostrar;

  final Color backgroundColor;

  final List<PinterestButton> items;

  PinterestMenu({
    this.mostrar = true,
    this.backgroundColor = Colors.white,
    @required this.items,
  });

  // final List<PinterestButton> items = [
  //   PinterestButton(
  //       icon: Icons.pie_chart,
  //       onPressed: () {
  //         print('Icon pie chart');
  //       }),
  //   PinterestButton(
  //       icon: Icons.search,
  //       onPressed: () {
  //         print('Icon search');
  //       }),
  //   PinterestButton(
  //       icon: Icons.notifications,
  //       onPressed: () {
  //         print('Icon notifications');
  //       }),
  //   PinterestButton(
  //       icon: Icons.supervised_user_circle,
  //       onPressed: () {
  //         print('Icon supervised_user_circle');
  //       }),
  // ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _MenuModel(),
      child: AnimatedOpacity(
        opacity: (mostrar) ? 1 : 0,
        duration: Duration(milliseconds: 250),
        child: _PinterestMenuBackground(
          child: _MenuItems(items),
          backgroundColor: this.backgroundColor,
        ),
      ),
    );
  }
}

class _PinterestMenuBackground extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const _PinterestMenuBackground({
    @required this.child,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: 250,
      height: 60,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            offset: Offset(2.0, 2.0),
            blurRadius: 10.0,
            spreadRadius: -2.0,
          )
        ],
      ),
    );
  }
}

class _MenuItems extends StatelessWidget {
  final List<PinterestButton> menuItems;

  _MenuItems(this.menuItems);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
          menuItems.length, (i) => _PinterestMenuButton(i, menuItems[i])),
    );
  }
}

class _PinterestMenuButton extends StatelessWidget {
  final int index;
  final PinterestButton item;

  _PinterestMenuButton(this.index, this.item);

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    final itemSeleccionado = Provider.of<_MenuModel>(context).itemSeleccionado;
    final colorPrimario = Provider.of<_MenuModel>(context).primaryColor =
        (appTheme == ThemeData.dark()) ? Colors.greenAccent : Colors.blue;
    final colorSecundario = Provider.of<_MenuModel>(context);
    return ChangeNotifierProvider(
      create: (_) => new _MenuModel(),
      child: GestureDetector(
        onTap: () {
          Provider.of<_MenuModel>(context, listen: false).itemSeleccionado =
              index;
          item.onPressed();
        },
        behavior: HitTestBehavior.translucent,
        child: Container(
          child: Icon(
            item.icon,
            size: (itemSeleccionado == index) ? 32 : 25,
            color: (itemSeleccionado == index)
                ? colorPrimario
                : colorSecundario.secondaryColor = Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}

class _MenuModel with ChangeNotifier {
  int _itemSeleccionado = 0;
  Color _primaryColor = Colors.black;
  Color _secondayColor;

  int get itemSeleccionado => this._itemSeleccionado;

  set itemSeleccionado(int index) {
    this._itemSeleccionado = index;
    notifyListeners();
  }

  Color get primaryColor => this._primaryColor;

  set primaryColor(Color valor) {
    this._primaryColor = valor;
    notifyListeners();
  }

  Color get secondaryColor => this._secondayColor;

  set secondaryColor(Color valor) {
    this._secondayColor = valor;
    notifyListeners();
  }
}
