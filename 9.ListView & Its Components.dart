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
        body:Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            // reverse:true, for reverse use
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('One' ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Two' ,style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('three' ,style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Four' ,style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Five' ,style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),
              )
              
            ],
          ),
        ),
    );
  }
}