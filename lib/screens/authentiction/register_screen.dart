import 'package:flutter/material.dart';
import 'package:threads_clone/utils/colors.dart';
import 'package:threads_clone/widget/button.dart';
import 'package:threads_clone/widget/text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset(
                  'assets/images/threads.png',
                  height: 70,
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 45,
                      backgroundColor: secondaryColor,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadiusDirectional.circular(30),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_a_photo),
                          color: Colors.yellow.shade600,
                        ),
                      ),
                    ),
                  ],
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
                TextInputField(
                  controller: _userNameController,
                  hintText: "Enter a User Name",
                  inputKeyboardType: TextInputType.emailAddress,
                  isPassword: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextInputField(
                  controller: _bioController,
                  hintText: "Enter a Bio",
                  inputKeyboardType: TextInputType.emailAddress,
                  isPassword: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                SubmitButton(
                  text: "Register",
                  onPressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Log In",
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
