import 'package:flutter/material.dart';

class LogisticApp extends StatelessWidget {
  const LogisticApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    const Text(
                      "Afternoon",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      child: const Icon(Icons.notifications_none),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                      ),
                      child: const Icon(Icons.person_outline),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 300,
                decoration: const BoxDecoration(color: Colors.yellow),
                margin: const EdgeInsets.only(bottom: 16),
              ),
              Container(
                height: 240,
                decoration: const BoxDecoration(color: Colors.orange),
              ),
              const Spacer(),
              Container(
                height: 88,
                margin: const EdgeInsets.only(bottom: 8),
                decoration: const BoxDecoration(color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
