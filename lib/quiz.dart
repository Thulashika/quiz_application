import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_app/components/custom_elevated_button.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/data/questions.dart';


// List<String> nameList = ['Jude', 'Jeevan', 'Krishanth', 'Vini'];
// nameList[0]  ==> Jude
// nameList[2]  ==> Krishanth

/* 

  for (int i = 0; i < nameList.length; i = i + 1) {
      print(printing namelist);
  }

  ....

  printing namelist
  printing namelist
  printing namelist
  printing namelist

  printName

  var name = 'Jude'
  var isAPerson = false

  void printName() {
    print(name);
  }

  void runAGivenFunction(Function தரப்பட்டFunction) {


      other code....

      தரப்பட்டFunction();

  }

  runAGivenFunction(() {
    print(name);
  });



  nameList.map((value) {
    print(value)
  })

*/


class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.onQuizComplete});

  final void Function() onQuizComplete;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> answers = [];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    // List <String> nameList = ['Thulasi', 'Ram', 'Bala', 'Mathi'];
    QuizQuestion currentQuestion = questions[index];
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 324,
            height: 114,
            child: Text(
              currentQuestion.question,
              // 'Which programming language is used for Flutter?',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
            ),
          ),
          Gap(80),
          // CustomElevatedButton(currentQuestion.answers[0]),
          // Gap(24),
          // CustomElevatedButton(currentQuestion.answers[1]),
          // Gap(24),
          // CustomElevatedButton(currentQuestion.answers[2]),
          // Gap(24),
          // CustomElevatedButton(currentQuestion.answers[3]),
          ...currentQuestion.answers.map((String value) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CustomElevatedButton(
                value,
                onTap: () {
                  answers.add(value);
                  if(questions.length > index + 1) {
                    setState(() {
                      index++;
                    });
                  }
                  else {
                    widget.onQuizComplete;
                  }
                },
                ),
            );
          }),   
        ],
      ),
    );
  }
}
