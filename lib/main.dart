import 'package:famapp/constants/color_palette.dart';
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

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'FamApp',
            style: TextStyle(
              color: textColor,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 25.0),
            padding: const EdgeInsets.all(30.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(labelText: "Username"),
                ),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(textColor),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(secondaryColor),
                  ),
                  onPressed: () {
                    final username = _usernameController.text;
                    final password = _passwordController.text;
                    print("User: $username\nPassword: $password");
                  },
                  child: const Text("Login"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
