import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/screens/quiz_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.coreectAnswer});
  final int coreectAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getappbar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/welcome.png"),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200.0, 45.0),
                backgroundColor: Colors.indigo[800],
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => QuizPage(correctAnswers: 0),
                  ),
                );
              },
              child: Text(
                "شروع بازی",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget getappbar() {
    return AppBar(
      title: Text(
        "کوییز گیم",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      elevation: 4,
      backgroundColor: Colors.indigo[800],
      automaticallyImplyLeading: false,
    );
  }
}
