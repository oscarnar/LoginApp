import 'package:flutter/material.dart';
import 'package:login_app/widgets/appBar_widget.dart';

class AddCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wScreen = MediaQuery.of(context).size.width;
    final hScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: MyAppBar('Add Course').build(context),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: AddCourseForm(),
      ),
    );
  }
}

class AddCourseForm extends StatefulWidget {
  @override
  _AddCourseFormState createState() => _AddCourseFormState();
}

class _AddCourseFormState extends State<AddCourseForm> {
  final _formKey = GlobalKey<FormState>();

  String _courseName;
  String _courseDescription;

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
            nameFormField("Name", wScreen, context),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return "Ingrese un nombre";
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Example Mathematics',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[400], width: 2.5),
                    borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(Icons.book),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 10),
            nameFormField("Description", wScreen, context),
            MyTextFormFiel("Description", Icons.textsms),
            SizedBox(height: 10),
            nameFormField("URL", wScreen, context),
            MyTextFormFiel("Photo URL", Icons.photo),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                //TODO Validar y agregar al provider
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Procesando...'),
                    ),
                  );
                  Navigator.pop(context);
                }
              },
              color: Theme.of(context).appBarTheme.color,
              child: Text(
                "Add Course",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container nameFormField(String name, double wScreen, BuildContext context) {
    return Container(
      width: wScreen * 0.8,
      child: Text(
        name,
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

class MyTextFormFiel extends StatelessWidget {
  String hint;
  IconData icon;
  MyTextFormFiel(
    this.hint,
    this.icon, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue[400], width: 2.5),
            borderRadius: BorderRadius.circular(10)),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(icon),
      ),
    );
  }
}
