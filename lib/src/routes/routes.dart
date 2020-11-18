import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_library/src/pages/error_page.dart';

Route<dynamic> getLibraryRoutes(RouteSettings settings){
  switch(settings.name){
    default: return _pageRoute(ErrorPage());
  }
}

PageRoute _pageRoute(Widget page){
  if(Platform.isIOS){
    return CupertinoPageRoute(builder: (_) => page);
  }else{
    return MaterialPageRoute(builder: (_)=> page);
  }
}