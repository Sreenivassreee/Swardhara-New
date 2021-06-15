import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swardhara_new/NavBarActions/NavBar.dart';

import 'package:swardhara_new/Themes/Provider.dart';
import 'package:swardhara_new/Themes/ThemeData.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(
        create: (_) {
          return themeChangeProvider;
        },
        child: Consumer<DarkThemeProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
               theme: ThemeData(
                  primarySwatch: Colors.red,
                  primaryColor:  Colors.black,
                  backgroundColor: Colors.black,
                  indicatorColor:  Color(0xff0E1D36),
                  buttonColor:  Color(0xff3B3B3B) ,
                  hintColor:  Color(0xff280C0B) ,
                  highlightColor:  Color(0xff372901),
                  hoverColor:  Color(0xff3A3A3B) ,
                  focusColor:  Color(0xff0B2512),
                  disabledColor: Colors.grey,
                  textSelectionColor:  Colors.white ,
                  cardColor:  Color(0xFF151515),
                  canvasColor:  Colors.black,
                  brightness: Brightness.dark ,

),

              // theme: Styles.themeData(themeChangeProvider.darkTheme, context),
              home: NavBar(),

              // routes: <String, WidgetBuilder>{
              //   AGENDA: (BuildContext context) => AgendaScreen(),
              // },
            );
          },
        ),);
  }
}