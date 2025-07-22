import 'package:flutter/material.dart';
import 'package:text_and_its_style/Custom_TextStyle/textstyle.dart';
import 'package:text_and_its_style/Widget/rounded_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sized Box',
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
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .onSurfaceVariant,
          title: Text('Sized Box'),

        ),
        body:Row(
          children: [

            Center(
              child: SizedBox.square(
                dimension:90,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Login")),
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Center(
              child: SizedBox.square(
                dimension:90,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Login")),
              ),
            ),

          ],
        )
    );
  }
}
