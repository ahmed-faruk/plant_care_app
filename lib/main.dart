import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:plant_care_app/data/themes/dark_theme.dart';
import 'package:plant_care_app/data/themes/light_theme.dart';
import 'package:plant_care_app/screens/welcome_screen.dart';
import 'package:plant_care_app/utils/theme.dart';
import 'package:plant_care_app/utils/localization.dart';


void main() {
  runApp(PlantCareApp());
}

class PlantCareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Care',
      theme: lightTheme, // Use light theme by default
      darkTheme: darkTheme,
      themeMode: ThemeMode.light, // Set initial theme mode
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ar', 'AE'),
        // Add more supported locales as needed
      ],
      home: WelcomeScreen(), // Set the initial screen
    );
  }
}
