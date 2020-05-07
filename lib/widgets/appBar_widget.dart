import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String _title;

  MyAppBar(this._title);
  @override
  Widget build(BuildContext context) {
    final hScreen = MediaQuery.of(context).size.height;
    final wScreen = MediaQuery.of(context).size.width;
    double maxTam;
    if(hScreen > wScreen) maxTam = hScreen;
    else  maxTam = wScreen; 
    return PreferredSize(
      preferredSize: Size.fromHeight(maxTam * 0.07 ),
      child: AppBar(
        title: Text(_title),
      ),
    );
  }
}
