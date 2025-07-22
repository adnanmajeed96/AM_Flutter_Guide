import 'package:flutter/material.dart';

void main()
{
  runApp(flutterapp());

}
class flutterapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expended Widget (Column)',
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
          title: Text('Expended Widget (Column)'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 150,
              color: Colors.red,
              child: Center(child: Text('Container-1',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
            ),
            Expanded(
              flex: 4,
              child: Container(

                height: 150,
                color: Colors.greenAccent,
                child: Center(child: Text('Container-2',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(

                height: 150,
                color: Colors.yellow,
                child: Center(child: Text('Container-3',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 150,
                color: Colors.orangeAccent,
                child: Center(child: Text('Container-4',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
              ),
            ),
          ],
        )
    );
  }

}

