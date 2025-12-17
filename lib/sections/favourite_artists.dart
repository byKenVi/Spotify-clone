import 'package:flutter/material.dart';


class FavouriteArtistsTitle extends StatelessWidget {
  const FavouriteArtistsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Your Favourite Artists',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
       
        ],
      ),
    );
  }
 }
  class FavouriteArtistsBadge extends StatelessWidget {
  final String artist;
  final String art;
  const FavouriteArtistsBadge({
    super.key,
    required this.artist,
    required this.art
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 20),
      child: InkWell(
        child: Column(children: [
          CircleAvatar(
            foregroundImage: AssetImage(art),
            radius: 90,
          ),
          const SizedBox(height: 15),
          Text(
            artist,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
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

  class FavouriteArtistsSection extends StatelessWidget {
  final List favouriteArtistsList;
  const FavouriteArtistsSection({
    super.key,
    required this.favouriteArtistsList
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:[
              for (var artist in favouriteArtistsList) 
                FavouriteArtistsBadge(
                  artist: artist['artist'],
                  art: artist['art'],
                ),
          ] 
        ),
      ),
    );
  }
  
  
  }