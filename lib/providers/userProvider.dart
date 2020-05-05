import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';

class UserProvider with ChangeNotifier {
  User user = User(
    'Rikolas',
    aboutMe: 'Me llamo Andres Wiese :)',
    urlPhoto:'https://elbocon.pe/resizer/cHDiKi4eFoBXM_RBFVlCkD9AIQI=/1200x800/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/PDGLLUK4ZJCL3GNZSJZFL3BVGQ.jpg'  );

  void editProfile(User temp) {
    this.user = temp;
    notifyListeners();
  }
}
