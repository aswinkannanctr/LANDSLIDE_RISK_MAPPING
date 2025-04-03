import 'package:flutter/material.dart';
import 'package:landslide_guardian/pages/google_map_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landslide Guardian',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFBEAA8F), // Beige/tan color from the image
        ),
        useMaterial3: true,
      ),
      home: const GoogleMapFlutter(),
    );
  }
}


