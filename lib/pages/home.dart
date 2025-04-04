import 'package:flutter/material.dart';
import 'package:landslide_guardian/pages/chatbot.dart';
import 'package:landslide_guardian/pages/data.dart';
import 'package:landslide_guardian/pages/map.dart';
import 'package:landslide_guardian/pages/weather_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Homeui extends StatelessWidget {
  const Homeui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Home icon at top left
              const Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 28,
                ),
              ),
              const SizedBox(height: 40),
              // App Title
              const Text(
                'LANDSLIDE\nGUARDIAN',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFBEAA8F),
                  height: 1.2,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 60),
              // Grid of feature buttons
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // First row of buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildFeatureButton(
                            context: context,
                            icon: Icons.chat_bubble_outline,
                            label: 'chatbot',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ChatbotUI()),
                              );
                            }),
                        const SizedBox(width: 16),
                        _buildFeatureButton(
                            context: context,
                            icon: Icons.data_usage,
                            label: 'data',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DatasPage()),
                              );
                            }),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Second row of buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildFeatureButton(
                            context: context,
                            icon: Icons.map_outlined,
                            label: 'map',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MapPage()),
                              );
                            }),
                        const SizedBox(width: 16),
                        _buildFeatureButton(
                            context: context,
                            icon: Icons.cloud_outlined,
                            label: 'weather',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WeatherScreen()),
                              );
                            }),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Emergency call button
                    _buildFeatureButton(
                        context: context,
                        icon: Icons.phone,
                        label: 'emergency call',
                        width: 200,
                        onTap: () async {
                          final Uri phoneUri = Uri.parse("tel:9876543210");
                          if (await canLaunchUrl(phoneUri)) {
                            await launchUrl(phoneUri);
                          } else {
                            throw "Could not launch number";
                          }
                        }),
                  ],
                ),
              ),
              // Bottom navigation bar
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFBEAA8F),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 24.0),
                      child: Icon(
                        Icons.logout,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureButton({
    required BuildContext context,
    required IconData icon,
    required String label,
    double width = 160,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xFFE5D6C6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 24,
              color: Colors.black87,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// SignupPage widget (you should have this in a separate file)
