import 'package:flutter/material.dart';

class TFCLogo extends StatelessWidget{
  const TFCLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
    child : Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 60,
        child: Image.asset('images/tfc_logo.png'),
      ),
      )
    );
  }
}