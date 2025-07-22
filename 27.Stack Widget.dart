import 'package:flutter/material.dart';
import 'package:text_and_its_style/Custom_TextStyle/textstyle.dart';
import 'package:text_and_its_style/Widget/rounded_button.dart';

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
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .secondaryContainer,
        title: Text('Stack Widget'),

      ),
      body:Stack(
        children: [
          Container(
              color: Colors.orange,
              width: 200,
              height: 200,
              child: Text('Container-I'),
            ),
          Container(
            color: Colors.cyan,
            width: 160,
            height: 160,
            child: Text('Container-II'),
          ),
          Container(
            color: Colors.red,
            width: 140,
            height: 140,
            child: Text('Container-III'),
          ),
        ],
      ),
    );
  }
}
