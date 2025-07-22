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
    var Time=DateTime.now();
    var time;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .secondaryContainer,
        title: Text('showing A Date Picker'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(onPressed:() async {
                DateTime? datePicked= await showDatePicker(
                    context: context,
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2026));
                if(datePicked!=null)
                  { 
                    print('Date selection:${datePicked.day}- ${datePicked.month}- ${datePicked.year}');
                  }
              }, child: Text('Select Date'),),
            ),
ElevatedButton(onPressed:() async {
   TimeOfDay? pickedTime= await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    initialEntryMode: TimePickerEntryMode.input // time clock format
  );
   if(pickedTime!=null)
     {
       print('time selected:${pickedTime.hour}- ${pickedTime.minute}');
     }
},
    child: Text('Select time:'))
          ],
        ),
      )

    );
  }
}