import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:provider/provider.dart';

import '../models/course.dart';
import '../providers/courseProvider.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, '/addCourse');
            },
          )
        ],
      ),
      drawer: MyDrawer(),
      drawerScrimColor: Theme.of(context).primaryColorDark,
      body: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lista = Provider.of<CourseProvider>(context).listCourses;
    return ListView.builder(
      itemBuilder: (context, index) {
        return CourseCard(lista[index]);
      },
      itemCount: lista.length,
    );
  }
}

class CourseCard extends StatelessWidget {
  final Course courseTemp;

  CourseCard(this.courseTemp);

  @override
  Widget build(BuildContext context) {
    return GFCard(
      color: Theme.of(context).textSelectionColor,
      title: GFListTile(
        title: Text(
          courseTemp.name,
          style:
              Theme.of(context).textTheme.headline6.apply(fontWeightDelta: 3),
        ),
        avatar: Icon(Icons.ac_unit),
        margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.002),
        subTitle: Text(courseTemp.description),
      ),
      titlePosition: GFPosition.start,
      image: Image.network(
        courseTemp.urlPhoto,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.13,
        fit: BoxFit.fitWidth,
        loadingBuilder: (context, child, progress) {
          return progress == null
              ? child
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
      content: Text(
        'No tienes tareas',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      elevation: 13,
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
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
  final String route;
  final String title;

  MyCard(this.title, this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.perm_identity,
        color: Theme.of(context).primaryColorLight,
      ),
      title: Text(title, style: TextStyle(fontSize: 28, color: Colors.white)),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
