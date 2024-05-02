import 'package:flutter/material.dart';

class TicketsApp extends StatefulWidget {
  const TicketsApp({super.key});

  @override
  State<TicketsApp> createState() => _TicketsAppState();
}

class _TicketsAppState extends State<TicketsApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
