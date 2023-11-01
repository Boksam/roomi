import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Roomi')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                  10,
                  (index) => Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "index : $index",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.accents[index % 15]),
                          ),
                        ),
                      ))
            ],
          ),
        ));
  }
}
