import 'package:flutter/material.dart';
import 'package:hub_central/pages/start.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          color: Color.fromARGB(255, 45, 32, 26),
          home: Start(),
        );
      },
    ),
  );
}
