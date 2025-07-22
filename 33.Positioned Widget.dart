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
      title: 'Positioned Widget',
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
        title: Text('Positioned Widget'),

      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.add_business_rounded,
              size: 100,
              color: Colors.deepOrange,)
            ),
            Center(child: Icon(Icons.play_arrow,
              size: 100,
              color: Colors.deepOrange,)
            ),
            Center(child: Icon(Icons.alarm_add,
              size: 100,
              color: Colors.deepOrange,)
            ),
            Center(child: Icon(Icons.ac_unit,
              size: 100,
              color: Colors.deepOrange,)
            ),
            Center(child: Icon(Icons.account_balance_rounded,
              size: 100,
              color: Colors.deepOrange,)
            ),
            Center(child: Icon(Icons.add_chart,
              size: 100,
              color: Colors.deepOrange,)
            ),Center(child: Icon(Icons.add_box,
              size: 100,
              color: Colors.deepOrange,)
            ),
            Center(child: Icon(Icons.add_circle,
              size: 100,
              color: Colors.deepOrange,)
            ),
          ],
        ),
      ),
    );
  }
}
