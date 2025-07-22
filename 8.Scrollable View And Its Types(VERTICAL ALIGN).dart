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
      title: 'Flutter Demo',
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .secondaryContainer,
        title: Text('Scrollable in Flutter :Vertical'),

      ),
      body:Padding(
        padding: const EdgeInsets.only(bottom: 11),
        child: SingleChildScrollView(
          child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.orange,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.red,
            ),
            Container(

              height: 200,
              color: Colors.yellow,
            ),
            Container(

              height: 200,
              color: Colors.green ,
            ),
            Container(

              height: 200,
              color: Colors.blueAccent ,
            ),
            Container(

              height: 200,
              color: Colors.pinkAccent ,
            ),

          ],
        ),
      ),
      )
    );
  }
}