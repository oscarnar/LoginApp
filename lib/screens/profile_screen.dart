import 'package:flutter/material.dart';
import 'package:login_app/providers/userProvider.dart';
import 'package:login_app/widgets/appBar_widget.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userTemp = Provider.of<UserProvider>(context);
    final wScreen = MediaQuery.of(context).size.width;
    final hScreen = MediaQuery.of(context).size.height;
    double minSize, maxSize;
    if (hScreen > wScreen) {
      minSize = wScreen;
      maxSize = hScreen;
    } else {
      minSize = hScreen;
      maxSize = wScreen;
    }

    return Scaffold(
      appBar: MyAppBar('My profile').build(context),
      bottomNavigationBar: MyBottomBar(maxSize: maxSize),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            BackProfile(hScreen: hScreen, userTemp: userTemp),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: hScreen * 0.17,
                  ),
                  PhotoProfile(
                    minSize: minSize,
                    userTemp: userTemp,
                    wScreen: wScreen,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    width: wScreen * 0.92,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Description(userTemp: userTemp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({
    Key key,
    @required this.maxSize,
  }) : super(key: key);

  final double maxSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: maxSize * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white70,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Course Favorite',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'IA',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Course Favorite',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'IA',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: null,
            ),
          )
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.userTemp,
  }) : super(key: key);

  final UserProvider userTemp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            userTemp.user.name,
            style: Theme.of(context).textTheme.headline4.apply(
                  fontSizeFactor: 1.2,
                  fontWeightDelta: 3,
                  color: Colors.black,
                ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Text(
            userTemp.user.aboutMe ?? "Nothing about u :c",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({
    Key key,
    @required this.minSize,
    @required this.userTemp,
    @required this.wScreen,
  }) : super(key: key);

  final double minSize;
  final UserProvider userTemp;
  final double wScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: minSize * 0.4,
        width: minSize * 0.4,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(userTemp.user.urlPhoto),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(wScreen * 0.2),
            border: Border.all(
                color: Theme.of(context).scaffoldBackgroundColor, width: 8)),
      ),
    );
  }
}

class BackProfile extends StatelessWidget {
  const BackProfile({
    Key key,
    @required this.hScreen,
    @required this.userTemp,
  }) : super(key: key);

  final double hScreen;
  final UserProvider userTemp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: hScreen * 0.3,
          child: Image.network(
            userTemp.user.urlPhoto,
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(
          height: hScreen * 0.5,
        ),
      ],
    );
  }
}

Widget oldPage(BuildContext context) {
  final userTemp = Provider.of<UserProvider>(context);
  final wScreen = MediaQuery.of(context).size.width;
  final hScreen = MediaQuery.of(context).size.height;
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Container(
          child: Image.network(
            userTemp.user.urlPhoto ??
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Ficons-for-free.com%2Favatar%2Bperson%2Bprofile%2Buser%2Bicon-1320086059654790795%2F&psig=AOvVaw38NqsPDIV7VoJsTEf33X7P&ust=1588775152398000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIiLtOn2nOkCFQAAAAAdAAAAABAP',
            width: wScreen,
            height: hScreen * 0.28,
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: hScreen * 0.015,
            horizontal: wScreen * 0.04,
          ),
          child: Container(
            color: Theme.of(context).primaryColorLight,
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(userTemp.user.name,
                      style: Theme.of(context).textTheme.headline4),
                  padding: EdgeInsets.all(10),
                ),
                Container(
                  padding: EdgeInsets.all(wScreen * 0.03),
                  child: Text(
                    userTemp.user.aboutMe ?? 'Nothing :c',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .apply(fontSizeFactor: 2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
