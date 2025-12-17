import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width : MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          gradient: RadialGradient(
          center: Alignment.topLeft,
          colors: [
            Color(0xff7f4053),
            Colors.black
          ],
          radius: 0.8,

        )
      ),
      );
  }
}