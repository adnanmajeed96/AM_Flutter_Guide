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
      title: 'List Tile in List View',
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
          title: Text('List Tile in List View'),

        ),
        body:ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading:Text('${index+1}'),
            title: Text(arrNames[index]) ,
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
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