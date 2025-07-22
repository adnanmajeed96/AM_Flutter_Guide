import 'package:flutter/material.dart';

void main()
{
  runApp(flutterapp());

}
class flutterapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'adding decoration to container',
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
        title: Text('decoration of container'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueAccent.shade100,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
                  borderRadius:  BorderRadius.circular(21),
                  border: Border.all(
                    width: 2,
                    color: Colors.red,
                  ),
               boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  spreadRadius: 3,
                  color: Colors.white,
                )
               ],


            ),
          ),
        ) ,
      ),
    );
  }

  }

