// edit_plant_screen.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/models/plant.dart';

class EditPlantScreen extends StatelessWidget {
  final Plant plant;

  EditPlantScreen({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Plant'),
      ),
      body: Center(
          //child: // Implement form to edit plant details
      ),
    );
  }
}
