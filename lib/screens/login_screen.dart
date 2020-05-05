import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  //final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[300],
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(350, 150),
                            bottomRight: Radius.elliptical(350, 150)),
                      ),
                      child: Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: FlutterLogo(),
                        ),
                      )),
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
                      width: 300,
                      height: 300,
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
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              Container(
                width: 300,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.blue[500],
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
                  //labelText: 'Email',
                  hintText: 'Example orosas@example.com',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blue[400], width: 2.5),
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(Icons.account_circle),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 300,
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.blue[500],
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
                  //labelText: 'Password',
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blue[400], width: 2.5),
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
                color: Colors.green,
                child: Text("Sing in"),
              ),
              SizedBox(height: 10),
              Text(
                "Forgot password?",
                style: TextStyle(
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
      ),
    );
  }
}
