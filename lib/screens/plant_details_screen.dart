// plant_details_screen.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/models/plant.dart';

class PlantDetailsScreen extends StatelessWidget {
  final Plant plant; // Plant data for the selected plant

  PlantDetailsScreen({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(plant.photoUrl), // Display plant photo
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Species: ${plant.species}'),
                // Add more details about the plant
              ],
            ),
          ),
        ],
      ),
    );
  }
}
