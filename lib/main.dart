import 'package:flutter/material.dart';
import 'package:login_app/providers/userProvider.dart';
import 'package:login_app/routes.dart';
import 'package:provider/provider.dart';

void main(){
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<UserProvider>(
      create: (_) => UserProvider(),
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
