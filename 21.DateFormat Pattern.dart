import 'package:flutter/material.dart';
import 'package:text_and_its_style/Custom_TextStyle/textstyle.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DateFormat pattern',
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
    var Time=DateTime.now();
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .secondaryContainer,
        title: Text('DateFormat pattern'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Current Time : ${DateFormat('jms').format(Time)}',style: mTextStyle(),),
            Text('Current Time : ${DateFormat('Hms').format(Time)}',style: mTextStyle(),),//show time with AM or PM
            Text('Current Time : ${DateFormat('yMd').format(Time)}',style: mTextStyle(),), //show time with Year-month-date
            Text('Current Time : ${DateFormat('yMMMMd').format(Time)}',style: mTextStyle(),),
            //show Month, date,year
            Text('Current Time : ${DateFormat('EEEE').format(Time)}',style: mTextStyle(),), //show day
            Text('Current Time : ${DateFormat('Hms').format(Time)}',style: mTextStyle(),),
          ],

        ),
      ),
    );
  }
}