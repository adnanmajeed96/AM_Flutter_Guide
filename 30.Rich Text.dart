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
      title: 'Rich Text',
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
          title: Text('Rich Text'),

        ),
        body:Center(
          child: RichText(text:
          TextSpan(
            style: TextStyle(fontSize:20,color: Colors.orange),
            children: <TextSpan>[
              TextSpan(text: 'Hello' ,),
              TextSpan(text: 'world!',style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              )
              ),
              TextSpan(text: 'Flutter',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 70,
                color: Colors.deepOrange,fontStyle: FontStyle.italic,
                fontFamily: 'ManufacturingConsent-Regular'),
              )
            ]
          )
          ),
        )

    );
  }
}
