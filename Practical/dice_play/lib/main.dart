import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            'Dice Game',
            style: GoogleFonts.pacifico(fontSize: 20, color: Colors.white),
          ),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the game of Dice',
              style: GoogleFonts.pacifico(fontSize: 25, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            const DiceApp(),
          ],
        )),
      ),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.dispose();
  }

  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Wrap(
            children: [
              Center(
                child: Card(
                  color: Colors.blue,
                  elevation: 30,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.blueAccent],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                leftDiceNumber = Random().nextInt(6) + 1;
                                rightDiceNumber = Random().nextInt(6) + 1;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child:
                                  Image.asset('images/dice$leftDiceNumber.png'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                          child: Divider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                leftDiceNumber = Random().nextInt(6) + 1;
                                rightDiceNumber = Random().nextInt(6) + 1;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset(
                                  'images/dice$rightDiceNumber.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
