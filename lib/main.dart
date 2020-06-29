import 'Screens/HomePage.dart';
import 'Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'PreferenceManager/PreferenceManager.dart' as ServerCommunicator;
import 'Screens/OutletListScreen.dart';

Future main() async {

  WidgetsFlutterBinding.ensureInitialized();

  var isUserLogin = await ServerCommunicator.isUserLoggedIn();
  Widget _defaultHome = new LoginScreen();

  if (isUserLogin) {
    _defaultHome = new HomePage(defaultPage: 0,);
  }

  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //     statusBarColor: themeColor
  // ));

  runApp(new MaterialApp(

    title: 'Smart Token',
    debugShowCheckedModeBanner: false,
//    theme: ThemeData(
//      primarySwatch: themeColor,
//      primaryColor: themeColor,
//    ),
     home: _defaultHome
    // home: HomeScreen(),
  ));
}
