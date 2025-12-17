import 'package:flutter/material.dart';
import 'sections/background.dart';
import 'sections/tfc_logo.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Spotifty Clone',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Spotifty Clone Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const BackgroundContainer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TFCLogo(),
              ],
            )
          ],
        ),
      )
    );
  
}
}
