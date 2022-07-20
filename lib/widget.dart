import 'package:flutter/material.dart';

// ignore: camel_case_types
class appbar extends StatelessWidget {
  const appbar({Key? key, required this.title}) : super(key: key);
  final String title;
  final double barHeight = 55.0;
  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;

    return Container(
      height: statusbarHeight + barHeight,
      padding: EdgeInsets.only(top: statusbarHeight),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff2683E5), Color(0xff36ABFB)],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.5, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Center(
        child: Text(
          title,
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
