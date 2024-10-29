import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

/// {@template questionSummary}
/// QuestionSummary widget.
/// {@endtemplate}
class QuestionSummary extends StatelessWidget {
  /// {@macro questionSummary}
  const QuestionSummary(
    this.summarydata, {
    super.key, // ignore: unused_element
  });
  final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summarydata.map(
        (data) {
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      (data['question'] as String),
                      style: const TextStyle(
                        fontSize: 24, // Cỡ chữ 24
                        decoration: TextDecoration.none, // Không gạch chân
                        color: Colors.white, // Màu chữ trắng
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      (data['user_answer'] as String),
                      style: const TextStyle(
                        fontSize: 24,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      (data['correct_answer'] as String),
                      style: const TextStyle(
                        fontSize: 24,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ).toList(),
    );
  }
}
