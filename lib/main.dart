import 'package:flutter/material.dart';
import 'package:weather_app/additional_information.dart';
import 'package:weather_app/current_weather.dart';
import 'widget.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: "Weather App",
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;
  Future<void> getData() async {
    data = await client.getCurrentWeather("London");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentWeather(Icons.wb_sunny_rounded, "${data!.temp}",
                    "${data!.cityName}"),
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  "Additional Information",
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Color(0x652A0E44),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(height: 20.0),
                additionalInformation("${data!.wind}", "${data!.humidity}",
                    "${data!.pressure}", "${data!.feels_like}"),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          ;
          return Container();
        },
      ),
    );
  }
}
