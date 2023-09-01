import 'package:flutter/material.dart';
import 'package:threads_clone/screens/authentiction/register_screen.dart';
import 'package:threads_clone/utils/colors.dart';
import 'package:threads_clone/widget/button.dart';
import 'package:threads_clone/widget/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Image.asset(
                  'assets/images/threads.png',
                  height: 75,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextInputField(
                  controller: _emailController,
                  hintText: "Enter a Email",
                  inputKeyboardType: TextInputType.emailAddress,
                  isPassword: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextInputField(
                  controller: _passwordController,
                  hintText: "Enter a Password",
                  inputKeyboardType: TextInputType.emailAddress,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                SubmitButton(
                  text: "Log In",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
