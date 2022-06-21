import 'package:famapp/components/custom_container.dart';
import 'package:famapp/constants/color_palette.dart';
import 'package:flutter/material.dart';

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
          CustomContainer(
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
