import 'package:flutter/material.dart';
import 'package:quiz_vip_flutter/screens/quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo[800],
        title: Text(
          'کویز اپ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/welcome.png'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo[700],
                minimumSize: Size(200, 40),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  QuizPage.routeName,
                );
              },
              child: Text(
                'شروع بازی',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
