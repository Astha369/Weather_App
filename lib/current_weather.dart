import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Icon(
          icon,
          color: Colors.orange,
          size: 64.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "$temp",
          style: const TextStyle(
            fontSize: 46.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "$location",
          style: const TextStyle(fontSize: 18.0, color: Color(0x80072f8f)),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    ),
  );
}
