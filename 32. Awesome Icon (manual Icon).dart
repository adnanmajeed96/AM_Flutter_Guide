import 'package:flutter/material.dart';
import 'package:text_and_its_style/Custom_TextStyle/textstyle.dart';
import 'package:text_and_its_style/Widget/rounded_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ICON WIDGET',
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
            .onSurfaceVariant,
        title: Text('ICON WIDGET'),

      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 100,
              ),
             FaIcon(FontAwesomeIcons.amazon,size: 100,color: Colors.orange,),
              FaIcon(FontAwesomeIcons.android,size: 100,color: Colors.orange,),
              FaIcon(FontAwesomeIcons.google,size: 100,color: Colors.orange,),
              FaIcon(FontAwesomeIcons.googleDrive,size: 100,color: Colors.orange,),
              FaIcon(FontAwesomeIcons.googlePlay,size: 100,color: Colors.orange,),
              FaIcon(FontAwesomeIcons.apple,size: 100,color: Colors.orange,),
              FaIcon(FontAwesomeIcons.batteryFull,size: 100,color: Colors.orange,),
              FaIcon(FontAwesomeIcons.batteryHalf,size: 100,color: Colors.orange,),
              FaIcon(FontAwesomeIcons.batteryEmpty,size: 100,color: Colors.orange,),
            ],
          ),
        ),
      )
    );
  }
}
