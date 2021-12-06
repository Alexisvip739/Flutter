import 'package:flutter/material.dart';

import 'card_lmage_list.dart';
import 'gradient_back.dart';

class headerAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[GradientBack("Popular"), CardImageList()],
    ); // acomoda los elementos uno sobre otro
  }
}
