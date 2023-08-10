import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/cards.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/calculator.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;
    final String stats = Calculator().getResult(double.parse(data.toString()));
    final String info =
        Calculator().getInterpretation(double.parse(data.toString()));
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text(
          'BMI Results',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            color: backgroundColor,
            child: const Text(
              'Your Results',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: background,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    stats,
                    style: const TextStyle(
                        color: Colors.lightBlueAccent, fontSize: 40),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    data.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    info,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
          ),
          Card(
              color: backgroundColor,
              elevation: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: ButtonBody(
                    startColor: submitEnd,
                    endColor: submitStart,
                    textBody: 'Recalculate',
                  )))
        ],
      ),
    );
  }
}
