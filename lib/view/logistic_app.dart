// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class LogisticApp extends StatefulWidget {
  const LogisticApp({super.key});

  @override
  State<LogisticApp> createState() => _LogisticAppState();
}

class _LogisticAppState extends State<LogisticApp> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
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
                height: 340,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(229, 248, 0, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: const EdgeInsets.only(bottom: 16),
                child: Stack(
                  children: [
                    Positioned(
                      left: 24,
                      right: 16,
                      top: 24,
                      bottom: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Delivery Team\nThat Cares\nAbout YOU",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          const Text(
                            "Logistics",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 16),
                            height: 6,
                            decoration: const BoxDecoration(color: Colors.blue),
                            child: Row(
                              children: const [
                                Expanded(child: Placeholder()),
                                Expanded(child: Placeholder()),
                                Expanded(child: Placeholder()),
                                Expanded(child: Placeholder()),
                                Expanded(child: Placeholder()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 240,
                // decoration: const BoxDecoration(color: Colors.orange),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[400]!,
                                    spreadRadius: -4,
                                    blurRadius: 3,
                                    offset: const Offset(0, 9),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[400]!,
                                    spreadRadius: -4,
                                    blurRadius: 3,
                                    offset: const Offset(0, 9),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 78,
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: index == 1
                                ? const Color.fromRGBO(229, 248, 0, 1)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.search, size: 28),
                              const SizedBox(height: 4),
                              Text("Search".toUpperCase()),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: index == 2
                                ? const Color.fromRGBO(229, 248, 0, 1)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.inventory_2_outlined, size: 28),
                              const SizedBox(height: 4),
                              Text("Shop".toUpperCase()),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
