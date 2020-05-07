import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wScreen = MediaQuery.of(context).size.width;
    final hScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(350, 150),
                      bottomRight: Radius.elliptical(350, 150)),
                ),
                child: Center(
                  child: Container(
                    width: hScreen * 0.14,
                    height: hScreen * 0.14,
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: FlutterLogo(),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Container()),
            Expanded(
              flex: 3,
              child: Center(
                child: Container(
                  width: wScreen * 0.8,
                  height: wScreen * 0.8,
                  child: LoginForm(),
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String _user;
  String _pass;

  @override
  Widget build(BuildContext context) {
    final wScreen = MediaQuery.of(context).size.width;
    final hScreen = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),
            Container(
              width: wScreen * 0.8,
              child: Text(
                'Email',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return "Ingrese un usuario";
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Example orosas@example.com',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[400], width: 2.5),
                    borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(Icons.account_circle),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: wScreen * 0.8,
              child: Text(
                'Password',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return "Ingrese un password";
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[400], width: 2.5),
                    borderRadius: BorderRadius.circular(10)),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.https),
              ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Procesando...'),
                    ),
                  );

                  Navigator.pushNamed(context, '/welcome');
                }
              },
              color: Colors.green[600],
              child: Text(
                "Sing in",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Forgot password?",
              style: TextStyle(
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
