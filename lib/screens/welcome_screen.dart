import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey[300],
      drawer: MyDrawer(),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
        SizedBox(height: 70),
        MyCard('Profile', '/profile'),
        MyCard('Settings', '/profile'),
        MyCard('News', '/profile'),
        MyCard('About us', '/profile'),
        MyCard('Logout', '/profile'),
      ],
    ));
  }
}

class MyCard extends StatelessWidget {
  String route;
  String title;

  MyCard(this.title,this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: Icon(Icons.perm_identity),
    title: Text(title, style: TextStyle(fontSize: 28, color: Colors.white)),
    onTap: (){
      Navigator.pushNamed(context, route);
    },
  );
  }
}

//MyCard(String title,String route) {
//  return ListTile(
//    leading: Icon(Icons.perm_identity),
//    title: Text(title, style: TextStyle(fontSize: 28, color: Colors.white)),
//    onTap: (){
//      Navigator.pushNamed(context, route)
//    },
//  );
//}
