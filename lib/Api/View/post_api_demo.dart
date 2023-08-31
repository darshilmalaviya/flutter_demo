// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool Loading = false;

  Future login({required String email, required String pass}) async {
    setState(() {
      Loading = true;
    });
    final response = await http.post(
      Uri.parse("https://uis.sataware.dev/api/login"),
      body: {
        "email": email,
        "password": pass,
      },
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      setState(() {
        Loading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(responseData["message"]),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                labelText: "password",
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                login(email: email.text, pass: password.text);
              },
              child: Loading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
