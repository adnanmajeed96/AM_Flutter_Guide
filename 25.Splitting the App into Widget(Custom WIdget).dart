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
      title: 'Getting Current Date And Time',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: TextTheme(
            headlineSmall: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,fontFamily: 'FontMain'),
            headlineMedium: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,fontFamily: 'FontMain'),
          )
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrcolor= [Colors.red, Colors.blue,Colors.orange,Colors.yellow];
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .secondaryContainer,
        title: Text('Splitting the App into Widget(Custom WIdget'),

      ),
      body: Container(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
                    topstatusslider(),
                    secondWidget(),
                    topstatusslider(),


          ],
        ),
      ),

    );
  }
}
class topstatusslider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          height: 100,
          color: Colors.orange,
          child: ListView.builder(itemBuilder: (context, index) =>
              Padding(
                padding: const EdgeInsets.all(11),
                child: SizedBox(
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/image.png'),
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
            scrollDirection: Axis.horizontal,
          )
      ),
    );
  }
  }
  class secondWidget extends StatelessWidget
  {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 100,
        color: Colors.yellow,
        child: ListView.builder(itemBuilder: (context,index)=>Padding(
          padding:EdgeInsets.all(11),
          child:ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.cyanAccent,
            ),
            title: Text('Name'),
            subtitle: Text('Mobile Number'),
            trailing: Icon(Icons.delete),
          ),
        ),
        ),),
    );
  }

  }

