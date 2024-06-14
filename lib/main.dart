


// import 'package:flutter/material.dart';
// import 'package:medical_appointment/main_screen.dart';
// import 'package:medical_appointment/firstpage.dart';

// void main(){
//   runApp(MyApp());

// }

// class MyApp extends StatelessWidget{
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title:"doctor App",
//       home:FirstPage(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_app/firstpage.dart'; // Import the first_page.dart file
import 'package:flutter_app/themes/theme.dart'; 
import 'package:google_fonts/google_fonts.dart';
// Import the theme.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkMode = false; // Initialize darkMode variable

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthcare Point',
      theme: darkMode ? darkTheme : lightTheme,
      themeMode: ThemeMode.system, 
      home: FirstPage(),
      
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: 
            Text(
          'Heathcare Point',
          style: GoogleFonts.lato(),
          ),
            actions: [
              Switch(
                value: darkMode,
                onChanged: (value) {
                  setState(() {
                    darkMode = value;
                  });
                },
              ),
            ],
          ),
          body: child,
        );
      },
    );
  }
}


