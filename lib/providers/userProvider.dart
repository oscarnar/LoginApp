import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';

class UserProvider with ChangeNotifier {
  User user = User(
    'Rikolas',
    aboutMe: 'Me llamo Andres Wiese :) soy modelo y actor naci en Lima pes causa un 16 de diciembre de 1983, desde muy pequeño demostre mi talento y mi apego por el dibujo y el diseño, por este motivo decidi estudiar arquitectura en la Universidad Peruana de Ciencias Aplicadas y así convertirse en todo un profesional, ya sabes no solo soy carita, ponte vrga. \n Hago postresitos, doy clases los jueves, no cobro mucho. :)',
    urlPhoto: 'https://peru21.pe/resizer/6-l5MO5lKAihlGBInQd8QhOU3lM=/980x528/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/I3QLGH7YMZB4PKJKQ5QXPYKPSA.JPG',
    urlPortada: 'https://elbocon.pe/resizer/cHDiKi4eFoBXM_RBFVlCkD9AIQI=/1200x800/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/PDGLLUK4ZJCL3GNZSJZFL3BVGQ.jpg'
    );

  void editProfile(User temp) {
    this.user = temp;
    notifyListeners();
  }
}
