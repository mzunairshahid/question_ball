import 'package:flutter/material.dart';
import 'dart:math';

class MagicApp extends StatefulWidget {
  const MagicApp({super.key});

  @override
  State<MagicApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MagicApp> {
  int QuestionNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 95, 177, 245),
      appBar: AppBar(
        title: Text('Ask any Question'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    QuestionNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/ball$QuestionNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
