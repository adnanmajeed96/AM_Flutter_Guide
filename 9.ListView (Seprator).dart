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
    var arrNames=['adnan','majeed','Awan','adnan','majeed','Awan','adnan','majeed','Awan','adnan','majeed','Awan'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .secondaryContainer,
          title: Text('ListView (Seprator)'),

        ),
        body:ListView.separated(itemBuilder: (context, index) {
          return Row(
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(arrNames[index],style: TextStyle(fontSize: 21 ,fontWeight: FontWeight.w500),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index],style: TextStyle(fontSize: 11 ,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(arrNames[index],style: TextStyle(fontSize: 21 ,fontWeight: FontWeight.w500),),
          ),
            ],
          );

        },
          itemCount: arrNames.length,
          separatorBuilder: (context,index) {
            return Divider(height: 100,thickness: 4,);
          }
        )
    );
  }
}