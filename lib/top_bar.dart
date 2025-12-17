import 'package:flutter/material.dart';

class TopBar extends StatelessWidget{
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left :20),
      child: Row(
        children: [
          const Text(
            'Good Morning',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.notifications_none,
                size: 30,
              ),
               onPressed: () {},
               color: Colors.white,

            ),
            const SizedBox(width: 10,),
            IconButton(
              icon: const Icon(
                Icons.access_time_outlined,
                size: 40,
              ),
               onPressed: () {},
               color: Colors.white,

            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(
                Icons.settings_outlined,
                size: 30,
              ),
               onPressed: () {},
               color: Colors.white,

            ), 
            const SizedBox(width: 10),
        ],
      )
    );
  }
}