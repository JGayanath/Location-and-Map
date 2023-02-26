import 'package:flutter/material.dart';
import 'package:location/location_sevicess/provider/location_provider.dart';
import 'package:location/location_sevicess/splash.dart';
import 'package:provider/provider.dart';

void main()async{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Provider_Location()),
    ],
    child: MyApp(),
  ));

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Splash();
  }

}