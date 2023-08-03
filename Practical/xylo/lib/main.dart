import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone Player',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            leading: const Icon(Icons.music_note_outlined),
            title: const Text(
              'Xylophone Player',
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.white,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListView(
                  children: [
                    Card(
                      elevation: 20,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const ListTile(
                        leading: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Tap on the notes to play the sound',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Divider(
                        color: Colors.red,
                        thickness: 1,
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Cards(
                          // Violet
                          startColor: Color.fromARGB(255, 118, 142, 204),
                          endColor: Color.fromARGB(255, 93, 230, 222),
                          noteNumber: 1,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Cards(
                          // Indigo
                          startColor: Color.fromARGB(255, 95, 10, 135),
                          endColor: Color.fromARGB(255, 164, 80, 139),
                          noteNumber: 2,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Cards(
                          // Blue
                          startColor: Color.fromARGB(255, 0, 159, 253),
                          endColor: Color.fromARGB(255, 42, 42, 114),
                          noteNumber: 3,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Cards(
                          // Green
                          startColor: Color.fromARGB(255, 128, 255, 114),
                          endColor: Color.fromARGB(255, 126, 232, 250),
                          noteNumber: 4,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Cards(
                          // Yellow
                          startColor: Color.fromARGB(255, 249, 217, 118),
                          endColor: Color.fromARGB(255, 243, 159, 134),
                          noteNumber: 5,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Cards(
                          // Orange
                          startColor: Color.fromARGB(255, 236, 159, 5),
                          endColor: Color.fromARGB(255, 255, 78, 0),
                          noteNumber: 6,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Cards(
                          // Red
                          startColor: Color.fromARGB(255, 254, 95, 117),
                          endColor: Color.fromARGB(255, 252, 152, 66),
                          noteNumber: 7,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Cards(
                          // Last
                          startColor: Color.fromARGB(255, 9, 198, 249),
                          endColor: Color.fromARGB(255, 4, 93, 233),
                          noteNumber: 8,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final Color startColor;
  final Color endColor;
  final int noteNumber;
  const Cards(
      {super.key,
      required this.startColor,
      required this.endColor,
      required this.noteNumber});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InnerContainer(
        startColor: startColor,
        endColor: endColor,
        noteNumber: noteNumber,
      ),
    );
  }
}

class InnerContainer extends StatelessWidget {
  final Color startColor;
  final Color endColor;
  final int noteNumber;
  const InnerContainer(
      {super.key,
      required this.startColor,
      required this.endColor,
      required this.noteNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            startColor,
            endColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: AnElevatedButton(noteNumber: noteNumber),
    );
  }
}

class AnElevatedButton extends StatelessWidget {
  final int noteNumber;
  const AnElevatedButton({super.key, required this.noteNumber});
  @override
  Widget build(BuildContext context) {
    List noteName = [
      'C - Do - Sa',
      'D - Re - Re',
      'E - Mi - Ga',
      'F - Fa - Ma',
      'G - So - Pa',
      'A - La - Dha',
      'B - Ti - Ni',
      'C - Do - Sa'
    ];
    var note = noteName.elementAt(noteNumber - 1);
    return ElevatedButton(
      onPressed: () {
        AssetsAudioPlayer.newPlayer().open(
          Audio("assets/note$noteNumber.wav"),
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        elevation: MaterialStateProperty.all(20),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Card(
        elevation: 30,
        color: Colors.transparent,
        child: ListTile(
          leading: const Icon(
            Icons.music_note_outlined,
            color: Colors.white,
          ),
          title: Center(
            child: Text(
              '$note',
              style: GoogleFonts.kalam(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
