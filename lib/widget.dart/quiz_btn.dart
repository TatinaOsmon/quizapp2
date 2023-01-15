import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    Key? key,
    required this.pressing,
    required this.tuuraBtnBu,
  }) : super(key: key);
  final bool tuuraBtnBu;
  final void Function(bool)? pressing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: ElevatedButton(
        onPressed: () => pressing!(tuuraBtnBu),
        style: ElevatedButton.styleFrom(
          backgroundColor: tuuraBtnBu ? Colors.green : Colors.red,
        ),
        child: Text(tuuraBtnBu ? 'True' : 'False'),
      ),
    );
  }
}
