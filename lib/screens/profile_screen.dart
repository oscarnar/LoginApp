import 'package:flutter/material.dart';
import 'package:login_app/providers/userProvider.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userTemp = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
          title: Text('My profile',
              style: TextStyle(fontSize: 28, color: Colors.white))),
      body: Column(
        children: <Widget>[
          Container(
            child: Image.network(userTemp.user.urlPhoto?? 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficons-for-free.com%2Favatar%2Bperson%2Bprofile%2Buser%2Bicon-1320086059654790795%2F&psig=AOvVaw38NqsPDIV7VoJsTEf33X7P&ust=1588775152398000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIiLtOn2nOkCFQAAAAAdAAAAABAP'),
          ),
          Container(
            child: Text(
              userTemp.user.name,
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            color: Colors.blueGrey[200],
            padding: EdgeInsets.all(10),
            //decoration: BoxDecoration(color: Colors.blueGrey[100]),
          ),
          Container(
            child: Text(
              userTemp.user.aboutMe?? 'Nothing :c',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )
        ],
        
      ),
    );
  }
}
