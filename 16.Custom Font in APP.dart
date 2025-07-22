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
      title: 'Custom Font in APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
        title: Text('Custom Font in APP'),

      ),
      body:Center(
        child: Container(
          width: 300,
            height: 300,
            color: Colors.red,
            child: Center(child: Text('adnan',style: TextStyle(fontSize: 50, fontFamily:'FontMain',fontWeight: FontWeight.bold),))),
      ),
    );
  }
}