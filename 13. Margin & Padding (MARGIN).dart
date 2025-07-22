import 'package:flutter/material.dart';

void main()
{
  runApp(flutterapp());

}
class flutterapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Margin & Padding',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:DecorationContianer(),
    );
  }
}
class DecorationContianer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Margin & Padding'),
      ),
      body:Container(
        margin: EdgeInsets.all(50),
        child: Center(child: Text('Margin' ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
        color: Colors.blueAccent,
        height: 100,
      )

    );
  }

}

