import 'package:flutter/material.dart';

import 'package:flutter_application_platzi/Profile/Gradient_Porfile.dart';
import 'package:flutter_application_platzi/Profile/Profile_Gradient.dart';
import 'package:flutter_application_platzi/card_lmage_list.dart';

class Profiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[GradientProfile(), ProfileGradient()],
    );
  }
}
