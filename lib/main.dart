import 'package:flutter/material.dart';
import 'package:full_app/src/models/layout_model.dart';

import 'package:full_app/src/pages/launcher_page.dart';
import 'package:full_app/src/pages/launcher_tablet_page.dart';
import 'package:full_app/src/theme/theme.dart';
import 'package:provider/provider.dart';

// void main() => runApp(
//       ChangeNotifierProvider(
//         create: (_) => new ThemeChanger(2),
//         child: MyApp(),
//       ),
//     );

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeChanger>(
              create: (_) => new ThemeChanger(2)),
          ChangeNotifierProvider<LayoutModel>(create: (_) => LayoutModel())
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      theme: appTheme.currentTheme,
      debugShowCheckedModeBanner: false,
      title: 'Full App',
      home: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          // print('Orientation $orientation');
          // return Container(
          //   child: LauncherPage(),
          // );
          final screenSize = MediaQuery.of(context).size;

          if (screenSize.width > 500) {
            return LauncherTabletPage();
          } else {
            return LauncherPage();
          }
        },
      ),
    );
  }
}
