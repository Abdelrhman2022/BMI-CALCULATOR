import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/BMI_Result_Screen.dart';

class BMI_Screen extends StatefulWidget {
  const BMI_Screen({Key? key}) : super(key: key);

  @override
  State<BMI_Screen> createState() => _BMI_ScreenState();
}

class _BMI_ScreenState extends State<BMI_Screen> {
  double height = 120.0;
  bool isMale = true;
  int weight = 70;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI Calculator"),

          backgroundColor: Colors.black54,
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage("assets/images/male.png"),
                                height: 80.0,
                                width: 80.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color:
                                  isMale ? Colors.black54 : Colors.redAccent),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage("assets/images/female.png"),
                                width: 80.0,
                                height: 80.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color:
                                  isMale ? Colors.redAccent : Colors.black54),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}",
                            style: TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "CM",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value) {
                          setState(() {
                            height = value.round() / 1.0;
                          });
                        },
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age == 20) {
                                        age = 20;
                                      } else {
                                        age--;
                                      }
                                    });
                                  },
                                  heroTag: "age--",
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  child:
                                      Icon(Icons.remove_circle_outline_rounded),
                                ),
                                Text(
                                  "$age",
                                  style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w900),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age >= 110) {
                                        age = 110;
                                      } else {
                                        age++;
                                      }
                                    });
                                  },heroTag: "age++",
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  child: Icon(Icons.add_circle_outline_rounded),
                                ),
                              ],
                            ),
                            Slider(
                              value: age / 1.0,
                              max: 110.0,
                              min: 20.0,
                              onChanged: (value) {
                                setState(() {
                                  age = value.round();
                                });
                              },
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight <= 40) {
                                        weight = 40;
                                      } else {
                                        weight--;
                                      }
                                    });
                                  },
                                  heroTag: "weight--",
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  child:
                                      Icon(Icons.remove_circle_outline_rounded),
                                ),
                                Text(
                                  "$weight",
                                  style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w900),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight >= 220) {
                                        weight = 220;
                                      } else {
                                        weight++;
                                      }
                                    });
                                  },
                                  heroTag: "weight++",
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  child: Icon(Icons.add_circle_outline_rounded),
                                ),
                              ],
                            ),
                            Slider(
                              value: weight / 1.0,
                              max: 220.0,
                              min: 40.0,
                              onChanged: (value) {
                                setState(() {
                                  weight = value.round();
                                });
                              },
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.redAccent,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                width: double.infinity,
                color: Colors.redAccent,
                child: MaterialButton(
                  onPressed: () {
                    var result = weight / pow(height / 100, 2);
                    print(result.round());
                    
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMIResultScreen(
                                age : age,
                              isMale : isMale,
                              result: result.round(),
                            )));
                  },
                  height: 50.0,
                  child: Text(
                    "calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ));
  }
}
