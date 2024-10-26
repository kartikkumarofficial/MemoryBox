import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
          ),
          child: Text(
            'This is search page',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
