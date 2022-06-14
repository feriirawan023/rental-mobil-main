import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rent_car/screen/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moon Car',
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 241, 242, 246),
        primarySwatch: Colors.cyan,
      ),
      home: const LoginScreen(),
    );
    
  }
}
