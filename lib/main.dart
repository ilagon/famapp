import 'package:famapp/constants/color_palette.dart';
import 'package:famapp/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const LoginView(),
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(backgroundColor: backgroundColor),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
