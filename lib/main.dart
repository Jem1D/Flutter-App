import 'package:first_app/core/store.dart';
import 'package:first_app/pages/cart_page.dart';
import 'package:first_app/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import './utils/routes.dart';
import 'package:first_app/pages/image_page.dart';
import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/login_page.dart';
import './pages/image_page.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.home,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.home: (context) => HomePage(),
        MyRoutes.login: (context) => LoginPage(),
        MyRoutes.image: (context) => ImagePage(),
        MyRoutes.cart: (context) => CartPage(),
      },
    );
  }
}
