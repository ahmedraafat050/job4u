import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  Head({Key? key, this.head}) : super(key: key);
  String? head;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Text(
        head!,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 95, 95, 95),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  Content({Key? key, this.content}) : super(key: key);
  String? content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Text(
        content!,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
