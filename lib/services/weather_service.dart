import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "31cb94cf9e854fb59ef144724230312";

  WeatherService({required this.dio});

  Future<WeatherModel> getCurrentWeather({required String city}) async {
    try {
      Response response =
          await dio.get("$baseUrl/forecast.json?key=$apiKey&q=$city&days=1");
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data["error"]["message"] ??
          "OOPS there was an error, try again later";
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("OOPS there was an error, try again later");
    }
  }
}
