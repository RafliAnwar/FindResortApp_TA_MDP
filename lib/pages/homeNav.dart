import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sanggraloka_ta/pages/error_page.dart';
import 'package:sanggraloka_ta/pages/home.dart';
import 'package:sanggraloka_ta/pages/home_tour.dart';
import 'package:sanggraloka_ta/pages/profile_page.dart';

class HomeNav extends StatefulWidget {
  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int selectedPage = 0;

  final _pageOptions = [
    HomePage(),
    HomeTour(),
    ErrorPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      extendBody: true,
      backgroundColor: Color(0xff141211),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(
          color: Color(0xff432FB3),
        ) //IconColor
            ),
        child: CurvedNavigationBar(
          //animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: selectedPage,
          buttonBackgroundColor: Color(0xffD5D5E1),
          height: 47,
          color: Color(0xff252525),
          backgroundColor: Colors.transparent.withOpacity(0), //NavBar
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(
              Icons.place_rounded,
              size: 30,
            ),
            Icon(
              Icons.linear_scale_outlined,
              size: 30,
            ),
            Icon(
              Icons.person,
              size: 30,
            ),
          ],
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ),
      ),
    );
  }
}
