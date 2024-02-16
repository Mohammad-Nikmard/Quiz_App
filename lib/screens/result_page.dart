import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/screens/home_page.dart';

// ignore: must_be_immutable
class ResultPage extends StatefulWidget {
  ResultPage({super.key, required this.correctanswer});
  int? correctanswer;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getappbar(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image(
                image: AssetImage("images/cup.png"),
                height: 300,
                width: 300,
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                "تعداد جواب درست شمااز 9 سوال",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text("${widget.correctanswer}",
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget getappbar(BuildContext context) {
    return AppBar(
      title: Text(
        "نتیجه آزمون",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      elevation: 4,
      backgroundColor: Colors.red[800],
      leading: GestureDetector(
        onTap: () {
          setState(() {
            widget.correctanswer = 0;
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  HomeScreen(coreectAnswer: widget.correctanswer!),
            ),
          );
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }
}
