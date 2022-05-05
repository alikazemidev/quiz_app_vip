import 'package:flutter/material.dart';
import 'package:quiz_vip_flutter/models/question.dart';
import 'package:quiz_vip_flutter/screens/result_screen.dart';

class QuizPage extends StatefulWidget {
  static const routeName = '/quiz_page';
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  bool isFinalAnswerSubmited = false;
  int correctAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo[800],
        title: Text(
          'سوال ${shownQuestionIndex + 1} / ${questionList.length} ',
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
            SizedBox(height: 20),
            Text(
              questionList[shownQuestionIndex].questionTitle.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ...List.generate(
              4,
              (index) => ListTile(
                onTap: (() {
                  setState(
                    () {
                      if (index ==
                          questionList[shownQuestionIndex].correctAnswer) {
                        correctAnswer += 1;
                      }
                      if (shownQuestionIndex == questionList.length - 1) {
                        isFinalAnswerSubmited = true;
                      }

                      if (shownQuestionIndex < questionList.length - 1) {
                        shownQuestionIndex += 1;
                      }
                    },
                  );
                }),
                title: Text(
                  questionList[shownQuestionIndex].answerList![index],
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            isFinalAnswerSubmited
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[700],
                      minimumSize: Size(200, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ResultScreen(res: correctAnswer),
                        ),
                      );
                    },
                    child: Text(
                      'مشاهده نتیجه',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
