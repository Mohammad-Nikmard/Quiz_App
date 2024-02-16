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
                "تعداد جواب درست شما",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text("$correctanswer",
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

  PreferredSizeWidget getappbar() {
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
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    );
  }
}
