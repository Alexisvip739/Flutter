import 'package:flutter/material.dart';
import 'package:flutter_application_platzi/Profile/Profile.dart';

import 'Search_trips.dart';
import 'home_trips.dart';

class Trips extends StatefulWidget {
  Trips({Key? key}) : super(key: key);

  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  int indexTap = 0;

  final List<Widget> widgetChildren = [HomaTrips(), SearchTrips(), Profiles()];
  void OnTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.green,
          ),
          child: BottomNavigationBar(
              onTap: OnTapTapped,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: Text("")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text("")),
              ]),
        ));
  }
}
