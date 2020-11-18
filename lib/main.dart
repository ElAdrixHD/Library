import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_library/src/preferences/shared_preferences.dart';
import 'package:my_library/src/routes/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new LibraryPreferences();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid){
      return MyMaterialApp();
    }else if(Platform.isIOS){
      return MyCupertinoApp();
    }else{
      return MyMaterialApp();
    }
  }
}

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyLibrary',
      debugShowCheckedModeBanner: false,

      onGenerateRoute: (settings) => getLibraryRoutes(settings),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'MyLibrary',
      debugShowCheckedModeBanner: false,

      onGenerateRoute: (settings) => getLibraryRoutes(settings),
    );
  }
}

