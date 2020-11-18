import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(Platform.isIOS){
      return CupertinoPageScaffold(
        child: _ErrorBody(),
      );
    }else{
      return Scaffold(
        body: _ErrorBody(),
      );
    }
  }
}

class _ErrorBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 225,
              child: SvgPicture.asset("assets/svgs/not_found.svg"),
          ),
          SizedBox(height: 15.0,),
          Text("La página que está buscando no existe",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

