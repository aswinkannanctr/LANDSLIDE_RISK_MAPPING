import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _apiKey = "b41ec3be35c7dac8aabbc21ba253137a";
  final String geminiApiKey = "AIzaSyB3uziBiI-Vygrl1vEQ-RgE-wvkDJL8m5E";
  final String _baseUrl = "https://api.openweathermap.org/data/2.5/weather";

  Future<Map<String, dynamic>?> getWeather(String location) async {
    try {
      print(location);
      final response = await _dio.get(
        "https://api.openweathermap.org/data/2.5/weather?q=palakkad&appid=b41ec3be35c7dac8aabbc21ba253137a&units=metric",
        // queryParameters: {"q": location, "appid": _apiKey, "units": "metric"},
      );

      if (response.statusCode == 200) {
        final data = response.data;

        print(response);
        // Extract required values
        double temperature = data["main"]["temp"];
        int humidity = data["main"]["humidity"];
        double windSpeed = data["wind"]["speed"];

        return {
          "temperature": temperature,
          "humidity": humidity,
          "windSpeed": windSpeed,
        };
      } else {
        print("Error: ${response.statusCode}");
        return null;
      }
    } on DioException catch (e) {
      print("Dio Error: $e");
      return null;
    }
  }

  Future<String> sendMessageToGemini(String message) async {
    try {
      final value = await Gemini.instance.prompt(parts: [
        Part.text(message),
      ]);

      log("${value?.output}");
      return value?.output ?? "";
    } catch (e) {
      log("Error: $e");
      return "";
    }
  }
}
