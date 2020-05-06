import 'package:flutter/widgets.dart';
import 'package:login_app/models/course.dart';

class CourseProvider with ChangeNotifier{
  List<Course> listCourses = [];

  void addCourse(Course newCourse){
    listCourses.add(newCourse);
    notifyListeners();
  }
  
}