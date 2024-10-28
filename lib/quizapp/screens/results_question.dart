import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:appdemo/quizapp/screens/quiz.dart';
import 'package:appdemo/quizapp/screens/questions.dart';
import 'package:appdemo/quizapp/data/quizdata.dart';

/// {@template results_question}
/// ResultsQuestion widget.
/// {@endtemplate}
class ResultsQuestion extends StatelessWidget {
  /// {@macro results_question}
  
   const ResultsQuestion({
    super.key, // ignore: unused_element
    required this.chooseAnswers,
  });
  final List<String> chooseAnswers;
  
  
  List<Map<String,Object>> getSummaryData() {
    final List<Map<String,Object>> summary = [];
    for (var i = 0; i < arraydata.length; i++) {
    
    summary.add({
      'question_index': i,
      'question': arraydata[i],
      'correct_answer': arraydata[i].questions[0],});
  }
  return summary;
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         Text("Results screens",style: Theme.of(context).textTheme.bodyMedium?.copyWith(
           color: Colors.white,
            fontFamily: "Raleway",
            fontSize: 20,
         )),
         SizedBox(width: 20,height: 20,),
         Text("Results questions",style: 
         Theme.of(context).textTheme.bodyMedium?.copyWith(
           color: Colors.white,
            fontFamily: "Raleway",
            fontSize: 20,
         )),
         SizedBox(width: 20,height: 20,),
         OutlinedButton.icon(onPressed: () {},icon: Icon(Icons.arrow_right), label: Text("Restart Quiz"),style: OutlinedButton.styleFrom(foregroundColor: const Color.fromARGB(255, 255, 17, 17)),),
        ],
      ),
    );
  }
}

