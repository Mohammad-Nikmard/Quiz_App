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
              height: 300,
              width: 300,
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  getQuestions()[shownindex].title!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ...List.generate(
              4,
              (index) => getlisttile(index),
            ),
            SizedBox(height: 10.0),
            Visibility(
              visible: answerState,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200.0, 45.0),
                  backgroundColor: Colors.red[800],
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
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
                    color: Colors.white,
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
      title: Text(
        "سوال ${itemCounter + 1} از 10",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      elevation: 4,
      backgroundColor: Colors.indigo[800],
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    );
  }

  Widget getlisttile(index) {
    return GestureDetector(
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
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
        child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Center(
            child: Text(
              getQuestions()[shownindex].answers![index],
              textAlign: TextAlign.end,
            ),
          ),
        ),
      ),
    );
  }
}
