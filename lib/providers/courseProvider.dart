import 'package:flutter/widgets.dart';
import 'package:login_app/models/course.dart';

//Solo para probar
String urlTemp = 'https://elbocon.pe/resizer/cHDiKi4eFoBXM_RBFVlCkD9AIQI=/1200x800/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/PDGLLUK4ZJCL3GNZSJZFL3BVGQ.jpg';

class CourseProvider with ChangeNotifier {
  //List<Course> listCourses = [];
  List<Course> listCourses = [
    Course("Computacion Grafica", description: "Jugamos con imagenes", urlPhoto: urlTemp),
    Course("Inteligencia Arificial", description: "Algoritmos basicos de IA", urlPhoto: urlTemp),
    Course("Redes y Comunicacion", description: "Redes", urlPhoto: urlTemp),
    Course("Investigacion en CS", description: "Leer papers y buscar y buscar temas para investigar", urlPhoto: urlTemp),
    Course("Ingenieria de Software", description: "Conceptos basicos para desarrollar", urlPhoto: urlTemp),
  ];

  void addCourse(Course newCourse) {
    listCourses.add(newCourse);
    notifyListeners();
  }
}
