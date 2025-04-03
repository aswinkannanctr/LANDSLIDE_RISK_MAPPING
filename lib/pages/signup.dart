import 'package:flutter/material.dart';
import 'package:landslide_guardian/pages/home.dart';


class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            // App Title
            const Text(
              'LANDSLIDE\nGUARDIAN',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Color(0xFFBEAA8F),
                height: 1.2,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 60),
            // Name TextField
            const TextField(
              decoration: InputDecoration(
                hintText: 'NAME',
                hintStyle: TextStyle(
                  color: Color(0xFFBEAA8F),
                  fontSize: 16,
                  letterSpacing: 1.5,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFBEAA8F)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFBEAA8F)),
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Email TextField
            const TextField(
              decoration: InputDecoration(
                hintText: 'EMAIL',
                hintStyle: TextStyle(
                  color: Color(0xFFBEAA8F),
                  fontSize: 16,
                  letterSpacing: 1.5,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFBEAA8F)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFBEAA8F)),
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Password TextField
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'PASSWORD',
                hintStyle: TextStyle(
                  color: Color(0xFFBEAA8F),
                  fontSize: 16,
                  letterSpacing: 1.5,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFBEAA8F)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFBEAA8F)),
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Confirm Password TextField
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'CONFORM PASSWORD',
                hintStyle: TextStyle(
                  color: Color(0xFFBEAA8F),
                  fontSize: 16,
                  letterSpacing: 1.5,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFBEAA8F)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFBEAA8F)),
                ),
              ),
            ),
            const SizedBox(height: 48),
            // Create Account Button
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homeui()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFBEAA8F),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Create an account.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
          ],
        ),
      ),
    );
  }
}