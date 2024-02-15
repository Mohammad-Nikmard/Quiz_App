import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/constants/constants.dart';
import 'package:flutter_quiz_application/screens/result_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

int shownindex = 0;
int itemCounter = 0;
int correctAnswers = 0;
bool answerState = false;

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    String imageIndex = getQuestions()[shownindex].imageNumber!;

    return Scaffold(
      appBar: getappbar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage("images/$imageIndex.png"),
            ),
            Text(
              getQuestions()[shownindex].title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            ...List.generate(
              4,
              (index) => getlisttile(index),
            ),
            Visibility(
              visible: answerState,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200.0, 40.0),
                  backgroundColor: Colors.red[800],
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ResultPage(correctanswer: correctAnswers),
                    ),
                  );
                },
                child: Text(
                  "مشاهده نتایج",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
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
      title: Text("سوال ${itemCounter + 1} از 10"),
      centerTitle: true,
      elevation: 4,
      backgroundColor: Colors.indigo[800],
    );
  }

  Widget getlisttile(index) {
    return ListTile(
      title: Text(
        getQuestions()[shownindex].answers![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        itemCounter++;
        setState(() {
          if (shownindex < getQuestions().length - 1) {
            shownindex++;
          }

          if (index == getQuestions()[shownindex].correctanswer) {
            correctAnswers++;
          }
          if (itemCounter == 9) {
            answerState = true;
          }
        });
      },
    );
  }
}
