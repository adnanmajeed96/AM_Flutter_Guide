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
      title: 'Wrap Widget',
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
        title: Text('Wrap Widget'),

      ),
      body:Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(// if no space on screen so widget move to next line
          direction: Axis.horizontal ,
          alignment: WrapAlignment.spaceAround,
          spacing: 11,
          runSpacing: 8,
          children: [
            Container(
              width: 100,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 200,
              color: Colors.cyan,
            ),Container(
              width: 100,
              height: 200,
              color: Colors.orange,
            ),Container(
              width: 100,
              height: 200,
              color: Colors.deepOrange,
            ),Container(
              width: 100,
              height: 200,
              color: Colors.pink,
            ),Container(
              width: 100,
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 200,
              color: Colors.redAccent,
            ),
            Container(
              width: 100,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 200,
              color: Colors.orangeAccent,
            ),
        
        
        
        
          ],
        ),
      )
    );
  }
}
