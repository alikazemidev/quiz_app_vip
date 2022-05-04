import 'package:flutter/material.dart';
import 'package:quiz_vip_flutter/models/question.dart';

class QuizPage extends StatefulWidget {
  static const routeName = '/quiz_page';
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo[800],
        title: Text(
          'صفحه بازی',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity),
            Image.asset(
              'images/${questionList[shownQuestionIndex].imageUrl}.png',
              height: 300,
            ),
            SizedBox(height: 30),
            Text(
              questionList[shownQuestionIndex].questionTitle.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            ...List.generate(
              4,
              (index) => ListTile(
                onTap: (() {
                  setState(() {
                    shownQuestionIndex += 1;
                    if (shownQuestionIndex > 1) {
                      shownQuestionIndex = 0;
                    }
                  });
                }),
                title: Text(
                  questionList[shownQuestionIndex].answerList![index],
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            // ListTile(
            //   onTap: () {
            //     setState(() {
            //       shownQuestionIndex += 1;
            //     });
            //   },
            //   title: Text(
            //     questionList[shownQuestionIndex].answerList![0],
            //     textAlign: TextAlign.end,
            //   ),
            // ),
            // ListTile(
            //   title: Text(
            //     questionList[shownQuestionIndex].answerList![1],
            //     textAlign: TextAlign.end,
            //   ),
            // ),
            // ListTile(
            //   title: Text(
            //     questionList[shownQuestionIndex].answerList![2],
            //     textAlign: TextAlign.end,
            //   ),
            // ),
            // ListTile(
            //   title: Text(
            //     questionList[shownQuestionIndex].answerList![3],
            //     textAlign: TextAlign.end,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
