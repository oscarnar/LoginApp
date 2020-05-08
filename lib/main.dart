import 'package:flutter/material.dart';
import 'package:login_app/providers/courseProvider.dart';
import 'package:login_app/providers/userProvider.dart';
import 'package:login_app/routes.dart';
import 'package:login_app/theme.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<UserProvider>(
          create: (_) => UserProvider(),
        ),
        Provider<CourseProvider>(
          create: (_) => CourseProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: myTheme,
        routes: getRoutes(),
        initialRoute: '/',
      ),
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.deepOrange,
        primaryColor: Colors.deepOrangeAccent,
      );
  }
}
//class builThemeData(){
//  static ThemeData theme;
//  
//  get 
//  
//}
