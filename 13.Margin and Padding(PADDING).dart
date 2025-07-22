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
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 50,top: 12,bottom: 50,right: 20),
            child: Text('Padding' ,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
          ),
    color: Colors.green,
        ),

    );
  }

}

