import 'package:flutter/material.dart';
import 'package:sanggraloka_ta/pages/homeNav.dart';
import 'package:sanggraloka_ta/pages/splash_page.dart';
import 'package:provider/provider.dart';
import 'package:sanggraloka_ta/providers/site_provider.dart';
import 'package:sanggraloka_ta/providers/space_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SpaceProvider>(
          create: (context) => SpaceProvider(),
        ),
        ChangeNotifierProvider<SiteProvider>(
          create: (context) => SiteProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sanggralokka',
        initialRoute: '/',
        routes: {
          '/': (context) => SplashPage(),
          '/home': (context) => HomeNav(),
        },
      ),
    );
  }
}
