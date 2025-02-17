import 'package:flutter/material.dart';

class AppColors {
  static Gradient blackWhite = LinearGradient(
    colors: const [
      Color.fromARGB(255, 245, 244, 247),
      Color.fromARGB(255, 45, 45, 46)
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
