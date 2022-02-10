import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_language/pages/about_page.dart';
import 'package:flutter_multi_language/pages/home_page.dart';
import 'package:flutter_multi_language/pages/settings_page.dart';
import 'package:flutter_multi_language/routes/route_name.dart';

class CustomRouter{

  static Route<dynamic> allRoutes(RouteSettings settings){
    switch(settings.name){
      case homeRoute:
        return MaterialPageRoute(builder: (_)=>const HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_)=>const AboutPage());
      case settingRoute:
        return MaterialPageRoute(builder: (_)=> const SettingsPage());
        default:
         return MaterialPageRoute(builder: (_)=>const HomePage());

    }

  }

}