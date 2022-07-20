import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/current_weather.dart';
import 'package:weather_app/model/weather_model.dart';




class WeatherApiClient{

  Future<Weather>? getCurrentWeather(String? location) async{

    //api uri format
    //api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}&units=metric

    var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=5b112e8e3880e60d3c24fbe0efab9805&units=metric");


    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}

