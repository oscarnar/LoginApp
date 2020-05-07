import 'package:flutter/material.dart';
import 'package:login_app/screens/addCourse_screen.dart';
import 'package:login_app/screens/login_screen.dart';
import 'package:login_app/screens/profile_screen.dart';
import 'package:login_app/screens/welcome_screen.dart';

Map<String,WidgetBuilder> getRoutes(){
  return <String,WidgetBuilder>{
    '/'           : (BuildContext context) => LoginScreen(),
    '/welcome'    : (BuildContext context) => Welcome(),
    '/profile'    : (BuildContext context) => ProfileScreen(),
    '/addCourse'    : (BuildContext context) => AddCourseScreen(),
  };
}