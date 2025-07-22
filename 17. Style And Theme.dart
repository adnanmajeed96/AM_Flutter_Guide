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
      title: 'Style And Theme',
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
        title: Text('Style And Theme'),

      ),
      body:Column(
        children: [
          Text('Style And Theme',style:Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.deepOrange),),
          Text('Style And Theme',style: Theme.of(context).textTheme.headlineMedium),
          Text('Style And Theme',style: Theme.of(context).textTheme.headlineSmall),
          Text('Style And Theme',style: mTextStyle(),),  //custom style of text

        ],
      ),
    );
  }
}