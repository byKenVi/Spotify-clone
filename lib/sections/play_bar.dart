import 'package:flutter/material.dart';

class PlayBar extends StatelessWidget {
  final String name;
  final String artist;
  final String art;

  const PlayBar({
    super.key,
    required this.name,
    required this.artist,
    required this.art,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: InkWell(
        onTap: () {}, 
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            color: const Color(0xff502833), 
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: SizedBox.square(
                          dimension: 45,
                          child: Image.asset(art, fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 12),
                      
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              artist,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      
                      IconButton(
                        icon: const Icon(Icons.favorite_border, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: const LinearProgressIndicator(
                    value: 0.4, 
                    backgroundColor: Colors.white24,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    minHeight: 2,
                  ),
                ),
              ),
              const SizedBox(height: 2),
            ],
          ),
        ),
      ),
    );
  }
}