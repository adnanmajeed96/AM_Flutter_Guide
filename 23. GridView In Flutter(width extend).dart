import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getting Current Date And Time',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: TextTheme(
            headlineSmall: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,fontFamily: 'FontMain'),
            headlineMedium: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,fontFamily: 'FontMain'),
          )
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrcolor= [Colors.red, Colors.blue,Colors.orange,Colors.yellow];
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .secondaryContainer,
        title: Text('Grid View In FLutter'),

      ),
      body: GridView.extent(maxCrossAxisExtent:200,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        children: [
          Container(color: arrcolor[0],),
          Container(color: arrcolor[1],),
          Container(color: arrcolor[2],),
          Container(color: arrcolor[3],),
          Container(color: arrcolor[2],),
          Container(color: arrcolor[3],),
          Container(color: arrcolor[0],),
          Container(color: arrcolor[2],),
        ],),

    );
  }
}