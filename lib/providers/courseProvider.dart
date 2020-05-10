import 'package:flutter/widgets.dart';
import 'package:login_app/models/course.dart';

class CourseProvider with ChangeNotifier {
  List<Course> listCourses = [
    Course(
      "Computacion Grafica",
      description: "Jugamos con imagenes",
      urlPhoto:
          'https://2.bp.blogspot.com/-BrRiO6nA_8s/WgiC1fU_ZOI/AAAAAAAACPM/TcKaWnR9lgwEDCcu7v3nb69pLlLVdYdgwCLcBGAs/s1600/futurocomg.jpg',
    ),
    Course("Inteligencia Arificial",
        description: "Algoritmos basicos de IA",
        urlPhoto:
            'https://observatorio-ia.com/wp-content/uploads/2019/04/IA-tendencias.jpg'),
    Course(
      "Redes y Comunicacion",
      description: "Redes",
      urlPhoto:
          'https://www.redeszone.net/app/uploads-redeszone.net/2019/10/portada_Herramientas_-red.png',
    ),
    Course(
      "Investigacion en CS",
      description: "Leer papers y buscar temas para investigar",
      urlPhoto:
          'https://image.shutterstock.com/image-photo/man-working-laptop-connecting-networking-260nw-403797997.jpg',
    ),
    Course(
      "Ingenieria de Software",
      description: "Conceptos basicos para desarrollar",
      urlPhoto:
          'https://www.queestudiar.org/wp-content/uploads/2017/10/software-750x350.jpg',
    ),
  ];

  void addCourse(Course newCourse) {
    listCourses.add(newCourse);
    notifyListeners();
  }
}
