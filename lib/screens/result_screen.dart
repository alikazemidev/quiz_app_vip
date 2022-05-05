import 'package:flutter/material.dart';
import 'package:quiz_vip_flutter/screens/home_screen.dart';

class ResultScreen extends StatelessWidget {
  int res = 0;
  ResultScreen({Key? key,  this.res = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.red[800],
        title: Text(
          'نتیجه آزمون',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset('images/cup.png'),
            ),
            Text(
              'پاسخ های صحیح شما',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              res.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text('دوباره بازی کن'))
          ],
        ),
      ),
    );
  }
}
