import 'package:flutter/material.dart';

class RecentlyPlayedTitle extends StatelessWidget{
  const RecentlyPlayedTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recently Played',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
       
        ],
      ),
    );
  }

}

class RecentlyPlayedBadge extends StatelessWidget {
  final String art;
  final String album;
  const RecentlyPlayedBadge({
    super.key,
    required this.art,
    required this.album
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 20),
      child: InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         SizedBox.square(
          dimension: 180,
          child: Image.asset(
            art,
            fit: BoxFit.cover),
         ),
          
          const SizedBox(height: 15),
          Text(
            album,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
        ],
        ),
        onTap: () {},
      ),
    );
  }
}

class RecentlyPlayedSection extends StatelessWidget {
  final List recentlyPlayedAlbums;
  const RecentlyPlayedSection({
    super.key,
    required this.recentlyPlayedAlbums,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: recentlyPlayedAlbums.map((album) {
            return RecentlyPlayedBadge(
              art: album['art'],
              album: album['album'],
            );
          }).toList(),
        ),
      ),
    );
  }
}