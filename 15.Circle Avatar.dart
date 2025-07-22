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
      title: 'Circular Avatar',
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
          title: Text('Circular Avatar'),

        ),
        body:Container(
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(
              child: CircleAvatar(
              backgroundImage:AssetImage('assets/images/image.png'),
                    backgroundColor: Colors.blue,
                    radius: 100,
              ),
            ),
          ),
              Center(child: Container(
                    margin: const EdgeInsets.all(40),
                    child: Text('Orbit System', style: TextStyle(fontSize: 50),),
                color: Colors.blueAccent,
              ),
             ),
                  ],
                ),
        ),

    );
  }
}