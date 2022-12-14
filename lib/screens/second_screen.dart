import 'package:flutter/material.dart';

import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  static const String routeName = "/second_screen";

  const SecondScreen({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Second Screen",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                data,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 50),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ThirdScreen.routeName,
                      arguments: "Hey, I'm Third Page."
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                child: Text(
                  "Next".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
