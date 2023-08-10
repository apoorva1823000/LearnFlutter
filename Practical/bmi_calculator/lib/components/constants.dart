import 'package:flutter/material.dart';

bool maleChecked = true;
bool weightChecked = true;
bool ageChecked = true;
bool heightChecked = true;
Color backgroundColor = const Color(0xff0a0e21);
Color cardColor = const Color(0xff1d1e33);
Color background = const Color.fromARGB(119, 255, 255, 255);
Color submitStart = const Color(0xffB621FE);
Color submitEnd = const Color(0xff1FD1F9);
Color textColor = const Color.fromARGB(255, 255, 255, 255);
Color inactiveColor = const Color(0xff111328);
Color activeMaleColor = const Color.fromARGB(177, 0, 208, 255);
Color activeFemaleColor = const Color.fromARGB(187, 170, 0, 255);

enum GenderEnum { male, female }

int finalWeight = 0;
int finalAge = 0;
int finalHeight = 0;
double finalBMI = 0;
