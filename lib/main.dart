import 'package:famapp/constants/color_palette.dart';
import 'package:famapp/diego_feeder/diego_feeder.dart';
import 'package:famapp/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(
    MaterialApp(
      home: const MainView(),
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(backgroundColor: backgroundColor),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const LoginView(),
        '/main': (context) => const MainView(),
      },
    ),
  );
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _iconSize = 55.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              iconSize: _iconSize,
              color: textColor,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
              iconSize: _iconSize,
              color: textColor,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.fastfood),
              iconSize: _iconSize,
              color: textColor,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                getDate(),
                style: const TextStyle(
                  fontSize: 30.0,
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const DiegoFeeder()
          ],
        ),
      ),
    );
  }
}

String getDate() {
  var now = DateTime.now();
  var formatter = DateFormat("EEEE, MMMM d yyyy").format(now);
  return formatter;
}
