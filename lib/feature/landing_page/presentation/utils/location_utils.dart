// Simple location picker modal (can be replaced with Google Places later)
import 'package:flutter/material.dart';

class LocationPicker extends StatelessWidget {
  final List<String> locations = [
    'Downtown',
    'Airport',
    'Train Station',
    'Hotel Plaza',
    'City Mall',
    'Tech Hub',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: locations.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(locations[index]),
            onTap: () => Navigator.of(context).pop(locations[index]),
          );
        },
      ),
    );
  }
}