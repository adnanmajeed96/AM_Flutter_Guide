import 'package:flutter/material.dart';
import 'package:text_and_its_style/Custom_TextStyle/textstyle.dart';



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
    var Time=DateTime.now();
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .secondaryContainer,
        title: Text('Getting Current Date And Time'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container(
        width:200,
            height: 200,
            child: Text('Current Second : ${Time.second}',style: mTextStyle(),)
               ),
        Text('Current Month : ${Time.month}',style: mTextStyle(),),
                Text('Current Day : ${Time.day}',style: mTextStyle(),),
                Text('Current Time : ${Time}',style: mTextStyle(),),


          ],

            ),
      ),
    );
  }
}