import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/src/models/layout_model.dart';
import 'package:full_app/src/pages/slideshow_page.dart';

import 'package:full_app/src/routes/routes.dart';
import 'package:full_app/src/theme/theme.dart';
import 'package:provider/provider.dart';

class LauncherTabletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;
    final layoutModel = Provider.of<LayoutModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            (appTheme == ThemeData.dark()) ? Colors.greenAccent : Colors.blue,
        title: Text('Diseños en Flutter - Tablet'),
      ),
      drawer: _MenuPrincipal(),
      //body: _ListaOpciones(),
      body: Row(
        children: <Widget>[
          Container(
            width: 300,
            height: double.infinity,
            //color: Colors.red,
            child: _ListaOpciones(),
          ),
          Container(
            width: 2,
            height: double.infinity,
            color: (appTheme == ThemeData.dark())
                ? Colors.greenAccent
                : Colors.blue,
          ),
          Expanded(
            child: layoutModel.currentPage,
          ),
        ],
      ),
    );
  }
}

class _ListaOpciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, i) => ListTile(
        leading: FaIcon(
          pageRoutes[i].icon,
          color:
              (appTheme == ThemeData.dark()) ? Colors.greenAccent : Colors.blue,
        ),
        title: Text(pageRoutes[i].titulo),
        trailing: Icon(
          Icons.chevron_right,
          color:
              (appTheme == ThemeData.dark()) ? Colors.greenAccent : Colors.blue,
        ),
        onTap: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context) => pageRoutes[i].page));
          final layoutModel = Provider.of<LayoutModel>(context,
              listen: false); // Listen false dentro de los eventos como onTap
          layoutModel.currentPage = pageRoutes[i].page;
        },
      ),
      separatorBuilder: (context, i) => Divider(color: Colors.blue),
      itemCount: pageRoutes.length,
    );
  }
}

class _MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);

    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Container(
                padding: EdgeInsets.all(25),
                width: double.infinity,
                height: 150,
                child: CircleAvatar(
                  backgroundColor:
                      (themeChanger.currentTheme == ThemeData.dark())
                          ? Colors.greenAccent
                          : Colors.blue,
                  child: Text(
                    'JL',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: _ListaOpciones(),
            ),
            ListTile(
              leading: Icon(
                Icons.lightbulb_outline,
                color: (themeChanger.currentTheme == ThemeData.dark())
                    ? Colors.greenAccent
                    : Colors.blue,
              ),
              title: Text('Dark Mode'),
              trailing: Switch.adaptive(
                value: themeChanger.darkTheme,
                activeColor: (themeChanger.currentTheme == ThemeData.dark())
                    ? Colors.greenAccent
                    : Colors.blue,
                onChanged: (value) => themeChanger.darkTheme = value,
              ),
            ),
            SafeArea(
              bottom: true,
              top: false,
              left: false,
              right: false,
              child: ListTile(
                leading: Icon(
                  Icons.add_to_home_screen,
                  color: (themeChanger.currentTheme == ThemeData.dark())
                      ? Colors.greenAccent
                      : Colors.blue,
                ),
                title: Text('Custom Theme'),
                trailing: Switch.adaptive(
                  value: themeChanger.customTheme,
                  activeColor: (themeChanger.currentTheme == ThemeData.dark())
                      ? Colors.greenAccent
                      : Colors.blue,
                  onChanged: (value) => themeChanger.customTheme = value,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
