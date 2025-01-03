import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 324,
            height: 114,
            child: Text(
              'Which programming language is used for Flutter?',
              style: TextStyle(
                color: Colors.white, 
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Gap(80),
          Container(
            height: 40,
            width: 300,
            child: ElevatedButton(
              onPressed: () {}, 
              child: const Text(
                'Java'
              ),
            ),
          ),
          Gap(24),
          Container(
            height: 40,
            width: 300,
            child: ElevatedButton(
              onPressed: () {}, 
              child: const Text(
                'Dart'
              ),
            ),
          ),
          const Gap(24),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              onPressed: () {}, 
              child: const Text(
                'Python'
              ),
            ),
          ),
          const Gap(24),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              onPressed: () {}, 
              child: const Text(
                'Kotlin'
              ),
            ),
          )
        ],
      ));
  }
}