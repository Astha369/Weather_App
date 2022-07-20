import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

TextStyle titleFont = const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
TextStyle infoFont = const TextStyle(fontSize: 18.0);

Widget additionalInformation(String wind, String humidity,String pressure, String feels_like)
{
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Wind",style: titleFont),
            SizedBox(
              height: 10.0,
            ),
            Text("$wind",style: infoFont),
            SizedBox(
              height: 10.0,
            ),
            Text("Humidity",style: titleFont,),
            SizedBox(
              height: 10.0,
            ),
            Text("$humidity",style: infoFont),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Pressure",style: titleFont),
            SizedBox(
              height: 10.0,
            ),
            Text("$pressure",style: infoFont),
            SizedBox(
              height: 10.0,
            ),
            Text("Feels Like",style: titleFont,),
            SizedBox(
              height: 10.0,
            ),
            Text("$feels_like",style: infoFont),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ],
    ),
  );
}