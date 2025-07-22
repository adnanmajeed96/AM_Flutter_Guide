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
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        title: Text('Scrollable in Flutter (Horizontal)'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 11),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.orange,
                        child: Image.asset('assets/images/image.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                        child: Center(child: Text('Second')),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.greenAccent,
                        child: Center(child: Text('Third')),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.redAccent,
                        child: Center(child: Text('Fourth')),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.red,
                child: Center(child: Text('Fifth')),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.yellow,
                child: Center(child: Text('Sixth')),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.green,
                child: Center(child: Text('Seventh')),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.blueAccent,
                child: Center(child: Text('Eight')),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.pinkAccent,
                child: Center(child: Text('Ninth')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
