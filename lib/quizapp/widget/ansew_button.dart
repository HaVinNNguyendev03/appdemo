import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
/// {@template ansew_button}
/// AnsewButton widget.
/// {@endtemplate}
class AnsewButton extends StatelessWidget {
  /// {@macro ansew_button}
  const AnsewButton({
      required this.ansewtetxt, 
    required this.onTap,
    super.key, // ignore: unused_element
  
  });
  final String ansewtetxt; 
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 147, 0, 216),padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40)),
      child: Text(
      ansewtetxt,
      style: const TextStyle(color: Colors.white),
      textAlign: TextAlign.center,
      ),
    );
  }
}

