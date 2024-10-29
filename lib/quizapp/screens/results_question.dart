import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:appdemo/quizapp/screens/quiz.dart';
import 'package:appdemo/quizapp/screens/questions.dart';
import 'package:appdemo/quizapp/data/quizdata.dart';
import 'package:appdemo/quizapp/screens/questionSummary.dart';
/// {@template results_question}
/// ResultsQuestion widget.
/// {@endtemplate}
class ResultsQuestion extends StatelessWidget {
  /// {@macro results_question}
  
   const ResultsQuestion(
    {
    super.key, // ignore: unused_element
    required this.chooseAnswers,
    required this.swicthScreen,
  });
  final List<String> chooseAnswers;
 final void Function() swicthScreen;
  
  List<Map<String,Object>> getSummaryData() {
    final List<Map<String,Object>> summary = [];
    for (var i = 0; i < chooseAnswers.length; i++) {
    
    summary.add({
      'question_index': i,
      'question': arraydata[i].title,
      'correct_answer': arraydata[i].questions[0],
      'user_answer' : chooseAnswers[i],
      });
  }
  return summary;
  }
  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = arraydata.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         Text("Ban Tra loi dung $numCorrectQuestions cau trong tong so $numTotalQuestions cau",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
           color: Colors.white,
            fontFamily: "Raleway",
            fontSize: 20,
         )),
         SizedBox(width: 20,height: 20,),
         QuestionSummary(getSummaryData()),
         SizedBox(width: 20,height: 20,),
         OutlinedButton.icon(onPressed: () {swicthScreen();}, icon: Icon(Icons.arrow_right), label: Text("Start Quiz"),style: OutlinedButton.styleFrom(foregroundColor: const Color.fromARGB(255, 255, 17, 17)),),
        ],
      ),
    );
  }
}

