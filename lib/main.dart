import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:real_estate_app/colors.dart';
import 'package:real_estate_app/src/core/presentaion/pages/home_page.dart';
import 'package:real_estate_app/src/core/presentaion/pages/max_search_page.dart';
import 'package:real_estate_app/src/core/presentaion/pages/search_by_catogery_page.dart';
import 'package:real_estate_app/src/real_estate_managment/presentation/pages/real_estate_page.dart';
import 'package:real_estate_app/src/real_estate_managment/presentation/pages/real_estate_template.dart';
import 'package:real_estate_app/src/user_managment/presentaion/pages/sign_up_page.dart';
import 'package:real_estate_app/src/user_managment/presentaion/pages/signin_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomePage.route ,
      routes: {
        SignInPage.route:(context) =>  SignInPage(),
         SignUpPage.route:(context) =>  SignUpPage(),
           HomePage.route:(context) =>  const HomePage(),
           RealEstatePage.route:(context) =>const RealEstatePage(),
           RealEstateTemplate.route:(context) =>const RealEstateTemplate(),
           SeacrhByCatogeryPage.route:(context) =>const SeacrhByCatogeryPage()
    , MaxSearchPage.route:(context) =>const MaxSearchPage()
      },
        localizationsDelegates: const[
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales:const [
    Locale('ar', 'AE'), // OR Locale('ar', 'AE') OR Other RTL locales
  ],
     
      theme: ThemeData(
        scaffoldBackgroundColor:appBackgroundColor,
        fontFamily: "cairo",
        primarySwatch:getMaterialColor(appPrimaryColor),
        secondaryHeaderColor: getMaterialColor(appPrimaryColorDark)
      ),


      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
 MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }