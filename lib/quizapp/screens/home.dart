import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


/// {@template home}
/// Home widget.
/// {@endtemplate}
class Home extends StatelessWidget {
  /// {@macro home}
  const Home(
      this.swicthScreen,
    {
    super.key, // ignore: unused_element
  });
  final void Function() swicthScreen;
  @override
  Widget build(BuildContext context) =>
    Scaffold(
       backgroundColor: Theme.of(context).colorScheme.primary,
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
          Image.asset("assets/images/quizapp/quiz-logo.png"),
           // SizedBox, Expanded, Flexible, Spacer, Divider
          SizedBox(height: 20),
          Text("Welcome to quizapp",style: TextStyle(color: Colors.white,fontFamily: "Raleway",fontSize: 20),),
          OutlinedButton.icon(onPressed: () {swicthScreen();}, icon: Icon(Icons.arrow_right), label: Text("Start Quiz"),style: OutlinedButton.styleFrom(foregroundColor: const Color.fromARGB(255, 255, 17, 17)),),
         ],
       ),
    );
}

