import 'package:flutter/material.dart';
import 'package:plant_care_app/screens/LoginScreen.dart';
import 'package:plant_care_app/screens/SettingsScreen.dart';
import 'package:plant_care_app/screens/SignUpScreen.dart';
import 'package:plant_care_app/utils/localization.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate('welcome_message')!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(AppLocalizations.of(context)!.translate('login')!),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text(AppLocalizations.of(context)!.translate('sign_up')!),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
              child: Text(AppLocalizations.of(context)!.translate('language')!),
            ),
          ],
        ),
      ),
    );
  }
}
