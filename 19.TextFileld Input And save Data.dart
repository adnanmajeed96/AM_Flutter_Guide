import 'package:flutter/material.dart';
import 'package:text_and_its_style/Custom_TextStyle/textstyle.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Input Field',
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
    var EmailText=TextEditingController();
    var PasswordText=TextEditingController();
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .secondaryContainer,
        title: Text('Text Input Field'),

      ),
      body:Center(child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextField(
                controller: EmailText,
                keyboardType: TextInputType.text,
                //get use value
                decoration: InputDecoration(
                    hintText: 'Enter Email',
                    focusedBorder: OutlineInputBorder( //when user click on (textfield) show color orange
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 3,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(  //when page load show default red
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                    ),
                    suffixText: "username exist" , //hint
                    suffixIcon: IconButton(
                      icon:Icon(Icons.remove_red_eye,color: Colors.red,),
                      onPressed: () {
String Email=EmailText.text.toString();
String Password=PasswordText.text;
                      },

                    ),
                    prefixIcon: Icon(Icons.remove_red_eye,color: Colors.blue,)
                ),
              ),
              Container(height: 30,),
              TextField(
                controller: PasswordText,
                obscureText: true,
                decoration: InputDecoration(
                hintText: 'Enter Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                          color: Colors.red,
                        )
                    )
                ),

              ),
              ElevatedButton(onPressed: (){
                String EMAIL=EmailText.text.toString();
                String Password=PasswordText.text.toString();
                print('Email:$EMAIL, Password: $Password');
              },
                  child: Text('Login'))
            ],
          )
      )
      ),

    );
  }
}
