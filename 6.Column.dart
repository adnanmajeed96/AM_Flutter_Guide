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
        title: Text('Column in  Flutter'),
      ),
      body: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          /*mainAxisAlignment:MainAxisAlignment.spaceBetween,*/
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('A1', style: TextStyle(fontSize: 30, color: Colors.teal)),
                Text('B1', style: TextStyle(fontSize: 30, color: Colors.teal)),
                Text('C1', style: TextStyle(fontSize: 30, color: Colors.teal)),
                ElevatedButton(onPressed: () {}, child: Text('button')),
              ],
            ),
            Text('A', style: TextStyle(fontSize: 30, color: Colors.teal)),
            Text('B', style: TextStyle(fontSize: 30, color: Colors.teal)),
            Text('C', style: TextStyle(fontSize: 30, color: Colors.teal)),
            ElevatedButton(onPressed: () {}, child: Text('button')),
          ],
        ),
      ),
    );
  }
}
