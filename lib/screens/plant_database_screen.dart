// plant_database_screen.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/models/plant.dart';
import 'package:plant_care_app/screens/plant_details_screen.dart';

class PlantDatabaseScreen extends StatelessWidget {
  final List<Plant> plantList; // Replace this with your actual plant data

  PlantDatabaseScreen({required this.plantList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Database'),
      ),
      body: ListView.builder(
        itemCount: plantList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(plantList[index].name),
            subtitle: Text(plantList[index].species),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlantDetailsScreen(plant: plantList[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
