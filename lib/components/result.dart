import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.questionIndex,
    required this.question,
    required this.correctAnswer,
    required this.providedAnswer,
  });
  final int questionIndex;
  final String question;
  final String correctAnswer;
  final String providedAnswer;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 27,
            height: 27,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
                child: Text(
              questionIndex.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          const Gap(12),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.73,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Gap(2),
                Text(
                  correctAnswer,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const Gap(2),
                Text(
                  providedAnswer,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}