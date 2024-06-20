

// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'firstpage.dart'; 
// import 'themes/theme.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool darkMode = false;
//   Locale _locale = Locale('en'); // Default locale

//   void _changeLanguage(Locale locale) {
//     setState(() {
//       _locale = locale;
//     });
//   }

//   void _showLanguageDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Choose Language'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ListTile(
//                 title: Text('English'),
//                 onTap: () {
//                   _changeLanguage(Locale('en'));
//                   Navigator.of(context).pop();
//                 },
//               ),
//               ListTile(
//                 title: Text('हिन्दी'),
//                 onTap: () {
//                   _changeLanguage(Locale('hi'));
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Healthcare Point',
//       theme: darkMode ? darkTheme : lightTheme,
//       themeMode: ThemeMode.system,
//       localizationsDelegates: [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: [
//         Locale('en'),
//         Locale('hi'),
//       ],
//       locale: _locale,
//       home: FirstPage(changeLanguage: _changeLanguage),
//       builder: (context, child) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text(
//               AppLocalizations.of(context)?.healthcarePoint ?? 'Healthcare Point',
//               style: GoogleFonts.lato(),
//             ),
//              actions: [
              
//               Switch(
//                 value: darkMode,
//                 onChanged: (value) {
//                   setState(() {
//                     darkMode = value;
//                   });
//                 },
//               ),
//             ],
//           ),
//           body: child,
//         );
//       },
//     );
//   }
// }

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io'; // Import the dart:io package
import 'firstpage.dart';
import 'themes/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkMode = false;
  Locale _locale = Locale('en'); // Default locale

  void _changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  Future<void> _requestCameraPermission() async {
    if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      final status = await Permission.camera.request();
      if (status.isGranted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Camera permission granted'),
          ),
        );
      } else if (status.isDenied || status.isPermanentlyDenied) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Cannot access camera'),
            action: SnackBarAction(
              label: 'Open Settings',
              onPressed: () {
                openAppSettings();
              },
            ),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Camera permission is not supported on this platform'),
        ),
      );
    }
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('English'),
                onTap: () {
                  _changeLanguage(Locale('en'));
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text('हिन्दी'),
                onTap: () {
                  _changeLanguage(Locale('hi'));
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthcare Point',
      theme: darkMode ? darkTheme : lightTheme,
      themeMode: ThemeMode.system,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('hi'),
      ],
      locale: _locale,
      home: FirstPage(changeLanguage: _changeLanguage),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)?.healthcarePoint ?? 'Healthcare Point',
              style: GoogleFonts.lato(),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: _requestCameraPermission,
              ),
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
