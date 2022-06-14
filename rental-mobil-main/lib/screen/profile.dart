import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_car/data/data_rental.dart';
import 'package:rent_car/main.dart';
import 'package:rent_car/screen/login_screen.dart';

// void main() {
//   runApp(const Profile());
// }

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(30, 107, 135, 100),
          elevation: 0.0,
          centerTitle: true,
          title: const Text('Profile',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              )),
        ),
        body: Container(
          padding: const EdgeInsets.all(30.0),
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/profil.png'),
                      radius: 60,
                    ),
                    const SizedBox(height: 20.0),
                    Text('',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 43, 42, 42),
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5.0),
                    Text("Sultan Ilham",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 172, 169, 169),
                        )),
                  ],
                ),
                const SizedBox(height: 20.0),
                Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(30, 107, 135, 100),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.white, width: 1)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Avanza",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text("2 Bulan",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 55,
                  child: ElevatedButton(
                    child: const Text('Sign Out'),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
