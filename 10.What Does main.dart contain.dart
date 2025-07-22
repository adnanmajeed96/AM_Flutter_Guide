import 'package:flutter/material.dart';

void main()
{
  runApp(FlutterApp());
}
class FlutterApp extends StatelessWidget{  //how to app theme and app start
  @override
  Widget build(BuildContext context) {
return MaterialApp(
title: 'flutter app',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.yellow,
  ),
  home: DashboardSceen(),   //run first dashboard screen
);
  }

}
class DashboardSceen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Screen- What main.dart Contain'),
      ),
      body: Container(
        color: Colors.green,
        child: Text('Containers'),
        
      ),
    );
  }
}