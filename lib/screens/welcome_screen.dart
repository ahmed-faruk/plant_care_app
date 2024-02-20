import 'package:flutter/material.dart';
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
                // Navigate to login screen
              },
              child: Text(AppLocalizations.of(context)!.translate('login')!),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Navigate to sign up screen
              },
              child: Text(AppLocalizations.of(context)!.translate('sign_up')!),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigate to settings screen
              },
              child: Text(AppLocalizations.of(context)!.translate('language')!),
            ),
          ],
        ),
      ),
    );
  }
}
