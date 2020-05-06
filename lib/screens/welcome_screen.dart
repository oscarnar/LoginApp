import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

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
        actions: <Widget>[
          InkWell(
            child: Icon(Icons.add),
            onTap: (){
              
            }
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      backgroundColor: Colors.blueGrey[300],
      drawer: MyDrawer(),
      body: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GFCard(
          color: Colors.indigo[100],
          title: GFListTile(
            title: Text(
              'Inteligencia Artificial',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            avatar: Icon(Icons.ac_unit),
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(2),
            subTitle: Text('Curso de IA'),
          ),
          titlePosition: GFPosition.start,
          image: Image.network(
            'https://elbocon.pe/resizer/cHDiKi4eFoBXM_RBFVlCkD9AIQI=/1200x800/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/PDGLLUK4ZJCL3GNZSJZFL3BVGQ.jpg',
          ),
          content: Text('No tienes tareas'),
        )
      ],
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

  MyCard(this.title, this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.perm_identity),
      title: Text(title, style: TextStyle(fontSize: 28, color: Colors.white)),
      onTap: () {
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
