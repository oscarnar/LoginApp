import 'package:flutter/material.dart';
import 'package:login_app/providers/courseProvider.dart';
import 'package:login_app/providers/userProvider.dart';
import 'package:login_app/routes.dart';
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
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        routes: getRoutes(),
        initialRoute: '/',
      ),
    );
  }
}
