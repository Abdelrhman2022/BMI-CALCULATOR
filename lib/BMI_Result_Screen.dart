import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {

  int? result = null;
  int? age = null;
  bool? isMale = null;

  BMIResultScreen({
    @required this.age,
    @required this.isMale,
    @required this.result,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("RESULT"),
        backgroundColor: Colors.black54,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.redAccent
        ),
        child: Center(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gender: ${(isMale ?? false)? "Male": "Female"} ",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Age: $age",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "BMI: $result",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
