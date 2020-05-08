import 'package:flutter/material.dart';
import 'package:login_app/widgets/appBar_widget.dart';

class AddCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wScreen = MediaQuery.of(context).size.width;
    final hScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: MyAppBar('Add Course').build(context),
    );
  }
}
