import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  ResultPage({super.key, required this.correctanswer});
  int? correctanswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getappbar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image(
                image: AssetImage("images/cup.png"),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "نتیجه آزمون شما",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.0),
            Text("$correctanswer",
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget getappbar() {
    return AppBar(
      title: Text("نتیجه آزمون"),
      centerTitle: true,
      elevation: 4,
      backgroundColor: Colors.red[800],
    );
  }
}
