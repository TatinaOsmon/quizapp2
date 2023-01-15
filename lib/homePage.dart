import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quizapp2/widget.dart/quiz_btn.dart';
import 'package:quizapp2/widget.dart/ressult.dart';

import 'model/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List answers = <bool>[];
  List trueAnswers = <bool>[];
  List falseAnswers = <bool>[];

  int index = 0;

  void check(bool taty) {
    if (quizes[index].answer == taty) {
      answers.add(true);
      trueAnswers.add(true);
    } else {
      answers.add(false);
      falseAnswers.add(false);
    }
    setState(() {
      if (quizes[index] == quizes.last) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                title: const Text('You passed...'),
                content: Text(
                    'True answers ${trueAnswers.length}. False Answers ${falseAnswers.length}'),
                actions: [
                  TextButton(
                    onPressed: (() {
                      setState(() {
                        index = 0;
                        trueAnswers.clear();
                        falseAnswers.clear();
                        answers.clear();
                        Navigator.pop(context);
                      });
                    }),
                    child: const Text('Start from beginner'),
                  ),
                ]);
          },
        );
        index = 0;
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: _appBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Text(
            quizes[index].question,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 34),
          ),
          const SizedBox(
            height: 100,
          ),
          QuizButton(
            tuuraBtnBu: true,
            pressing: (taty) {
              check(taty);
            },
          ),
          const SizedBox(
            height: 35,
          ),
          QuizButton(
            tuuraBtnBu: false,
            pressing: (taty) {
              check(taty);
            },
          ),
          SizedBox(
            height: 50,
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: answers.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return answers[i]
                      ? const RessultIcons(trueIcons: true)
                      : const RessultIcons(trueIcons: false);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'Tapwyrma-07',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
