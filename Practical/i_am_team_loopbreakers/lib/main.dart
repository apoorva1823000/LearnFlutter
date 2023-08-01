import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'LoopBreakers',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'pacifico',
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Center(
            child: Wrap(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Colors.lightBlueAccent],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: Card(
                    color: Colors.blue,
                    elevation: 20.0,
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(5.0),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue, Colors.lightBlueAccent],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(
                              height: 80,
                              width: 80,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.greenAccent,
                                backgroundImage: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/cureit---health-assistant.appspot.com/o/ImpLogos%2FElegant%20and%20Minimal%20Medical%20Center%20Logo%20Template%20(800%20%C3%97%20800px).png?alt=media&token=70fa1ce1-dd9b-4dff-b664-4e2236bf7227'),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                              width: 20,
                            ),
                            Text('Apoorva Mehta',
                                style: GoogleFonts.pacifico(
                                  fontSize: 40.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            const Text(
                              'FLUTTER DEVELOPER',
                              style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 15.0,
                                color: Colors.black54,
                                letterSpacing: 2.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                              child: Divider(
                                thickness: 2,
                                color: Colors.white,
                              ),
                            ),
                            Card(
                              elevation: 30,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 25.0),
                              child: const ListTile(
                                leading: Icon(
                                  Icons.home_repair_service,
                                  color: Colors.black,
                                ),
                                title: Text(
                                  'Buisness',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 20.0,
                                  ),
                                ),
                                subtitle: Text(
                                  'CEO - LoopBreakers',
                                  style: TextStyle(
                                    color: Color.fromARGB(172, 0, 0, 0),
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                              child: Divider(
                                thickness: 2,
                                color: Colors.white,
                              ),
                            ),
                            Card(
                              elevation: 30,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 25.0),
                              child: const ListTile(
                                leading: Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                title: Text(
                                  'Phone Number',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 20.0,
                                  ),
                                ),
                                subtitle: Text(
                                  '+91 1234567890',
                                  style: TextStyle(
                                    color: Color.fromARGB(172, 0, 0, 0),
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                              child: Divider(
                                thickness: 2,
                                color: Colors.white,
                              ),
                            ),
                            Card(
                              elevation: 30,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 25.0),
                              child: const ListTile(
                                  leading: Icon(
                                    Icons.email,
                                    color: Colors.black,
                                  ),
                                  title: Text(
                                    'Email ID',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                      fontFamily: 'Source Sans Pro',
                                    ),
                                  ),
                                  subtitle: Text('apoorva@gmail.com',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color.fromARGB(172, 0, 0, 0),
                                        fontFamily: 'Source Sans Pro',
                                      ))),
                            ),
                            const SizedBox(
                              height: 20,
                              child: Divider(
                                thickness: 2,
                                color: Colors.white,
                              ),
                            ),
                            Card(
                              elevation: 30,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 25.0),
                              child: const ListTile(
                                leading: Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                ),
                                title: Text(
                                  'Location',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontFamily: 'Source Sans Pro',
                                  ),
                                ),
                                subtitle: Text(
                                  'Gujarat - India',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color.fromARGB(172, 0, 0, 0),
                                    fontFamily: 'Source Sans Pro',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
