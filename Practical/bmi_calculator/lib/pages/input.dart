import 'package:bmi_calculator/components/calculator.dart';
import 'package:bmi_calculator/components/cards.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/pages/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;
  int height = 120;
  int weight = 20;
  int age = 10;

  void updateGenderColor(GenderEnum gender) {
    setState(() {
      if (gender == GenderEnum.male) {
        maleCardColor =
            maleCardColor == inactiveColor ? activeMaleColor : inactiveColor;
        femaleCardColor = inactiveColor;
      } else if (gender == GenderEnum.female) {
        femaleCardColor = femaleCardColor == inactiveColor
            ? activeFemaleColor
            : inactiveColor;
        maleCardColor = inactiveColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 20,
          leading: const Icon(Icons.fitness_center),
          title: const Text(
            'BMI Calculator',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        maleChecked = true;
                        updateGenderColor(GenderEnum.male);
                      });
                    },
                    width: 200,
                    icons: const Icon(Icons.check),
                    color: maleCardColor,
                    shadowColor: Colors.transparent,
                    cardChild: const GenderIconContent(
                        gender: 'Male', genderIcon: FontAwesomeIcons.mars),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        maleChecked = false;
                        updateGenderColor(GenderEnum.female);
                      });
                    },
                    width: 200,
                    icons: const Icon(Icons.crop_sharp),
                    color: femaleCardColor,
                    shadowColor: Colors.transparent,
                    cardChild: const GenderIconContent(
                        gender: 'Female', genderIcon: FontAwesomeIcons.venus),
                  ),
                ),
              ],
            ),
            ReusableCard(
                onPress: () {},
                width: double.infinity,
                icons: const Icon(Icons.handshake),
                color: cardColor,
                shadowColor: Colors.transparent,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Height',
                      style: TextStyle(color: Colors.white60, fontSize: 25),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 50.0)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(fontSize: 18, color: Colors.white60),
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          finalHeight = height = newValue.round();
                        });
                      },
                    )
                  ],
                )),
            Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        onPress: () {},
                        width: 200,
                        icons: const Icon(Icons.abc),
                        color: cardColor,
                        shadowColor: Colors.transparent,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(weight.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 50.0)),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'kg',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white60),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: RawMaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                        finalWeight = weight;
                                      });
                                    },
                                    shape: const CircleBorder(),
                                    constraints: const BoxConstraints.tightFor(
                                        width: 56.0, height: 56.0),
                                    fillColor: Colors.white,
                                    child: const Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 10) {
                                        weight--;
                                        finalWeight = weight;
                                      } else {
                                        weight = 10;
                                        finalWeight = weight;
                                      }
                                    });
                                  },
                                  shape: const CircleBorder(),
                                  constraints: const BoxConstraints.tightFor(
                                      width: 56.0, height: 56.0),
                                  fillColor: Colors.white,
                                  child: const Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.black,
                                  ),
                                ))
                              ],
                            )
                          ],
                        ))),
                Expanded(
                    child: ReusableCard(
                        onPress: () {},
                        width: 200,
                        icons: const Icon(Icons.abc),
                        color: cardColor,
                        shadowColor: Colors.transparent,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(age.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 50.0)),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Y/O',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white60),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: RawMaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        if (age >= 10 && age < 120) {
                                          age++;
                                          finalAge = age;
                                        } else {
                                          age = 120;
                                          finalAge = age;
                                        }
                                      });
                                    },
                                    shape: const CircleBorder(),
                                    constraints: const BoxConstraints.tightFor(
                                        width: 56.0, height: 56.0),
                                    fillColor: Colors.white,
                                    child: const Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 10) {
                                        age--;
                                        finalAge = age;
                                      } else {
                                        age = 10;
                                        finalAge = age;
                                      }
                                    });
                                  },
                                  shape: const CircleBorder(),
                                  constraints: const BoxConstraints.tightFor(
                                      width: 56.0, height: 56.0),
                                  fillColor: Colors.white,
                                  child: const Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.black,
                                  ),
                                ))
                              ],
                            )
                          ],
                        ))),
              ],
            ),
            Card(
                color: backgroundColor,
                elevation: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      String results = Calculator().calculateBMI();
                      Fluttertoast.showToast(
                          msg:
                              "Gender: $maleChecked, weight: $finalWeight , age: $finalAge and height: $finalHeight and results: $results",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                      Navigator.pushNamed(context, '/results',
                          arguments: results);
                    },
                    child: ButtonBody(
                      startColor: submitStart,
                      endColor: submitEnd,
                      textBody: 'Submit',
                    )))
          ],
        ),
      ),
    );
  }
}
