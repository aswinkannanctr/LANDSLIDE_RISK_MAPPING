import 'package:flutter/material.dart';

class DatasPage extends StatelessWidget {
  const DatasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ML Predicted Data"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/images/image1.jpeg"),
              ),
              SizedBox(height: 20),
              Image(
                image: AssetImage("assets/images/image2.jpeg"),
              ),
              SizedBox(height: 20),
              Image(
                image: AssetImage("assets/images/image3.jpeg"),
              ),
              SizedBox(height: 20),
              Image(
                image: AssetImage("assets/images/image4.jpeg"),
              ),
              SizedBox(height: 20),
              Image(
                image: AssetImage("assets/images/image5.jpeg"),
              ),
              SizedBox(height: 20),
              Image(
                image: AssetImage("assets/images/image6.jpeg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
