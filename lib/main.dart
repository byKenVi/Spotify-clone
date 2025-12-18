import 'package:flutter/material.dart';
import 'sections/background.dart';
import 'sections/tfc_logo.dart';
import 'top_bar.dart';
import 'sections/highlight_albums.dart';
import 'sections/favourite_artists.dart';
import 'sections/jump_back_in.dart';
import 'sections/recently_played.dart';
import 'sections/play_bar.dart';

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
  List highlightAlbumsList = [{
    "album": "Damn",
    "art": "images/album1.jpg"
  },
  {
    "album": "All Eyez On Me",
    "art": "images/album2.jpg"
  },
  {
    "album": "Encore",
    "art": "images/album3.jpg"
  },
  {
    "album": "The Eminem Show",
    "art": "images/album4.jpg"
  },
  {
    "album": "Starboy",
    "art": "images/album5.jpg"
  },
  {
    "album": "Destin",
    "art": "images/album6.jpg"
  },
  
  ];

  List favoriteArtistsList = [
  {
    "artist": "Tiakola",
    "art": "images/artist1.jpg"
  },
  {
    "artist": "Damso",
    "art": "images/artist2.jpg"
  },
  {
    "artist": "Luidji",
    "art": "images/artist3.jpg"
  },
  {
    "artist": "The weekend",
    "art": "images/artist4.jpg"
  },
  
  ];
  List jumpBackInAlbums = [
    {
      "artist": "The Weekend",
      "album": "Starboy",
      "art": "images/album5.jpg",
    },
    {
      "artist": "Ninho",
      "album": "Destin",
      "art": "images/album6.jpg",
    },
    {
      "artist": "Eminem",
      "album": "Encore",
      "art": "images/album3.jpg",
    },
    {
      "artist": "Eminem",
      "album": "The Eminem Show",
      "art": "images/album4.jpg",
    },

  ];

  List recentlyPlayedAlbums = [
    {
      "album": "DAMN",
      "art": "images/album1.jpg",
    },
    {
      "album": "All Eyez on me",
      "art": "images/album2.jpg",
    },
    {
      "album": "Encore",
      "art": "images/album3.jpg",
    },
    {
      "album": "The Eminem Show",
      "art": "images/album4.jpg",
    },

  ];

  Map currentSong = {
    "name": "Locked Out of Heaven",
    "artist": "Bruno Mars",
    "art": "images/song1.jpg",
  };

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
                const TopBar(),
                const SizedBox(height: 15),
                HighlightAlbums(
                  highlightAlbumsList: highlightAlbumsList, 
                ),
                const SizedBox(height: 50),
                const FavouriteArtistsTitle(),
                const SizedBox(height: 15),
                FavouriteArtistsSection(favouriteArtistsList: favoriteArtistsList),
                const SizedBox(height: 50),
                const JumpBackInTitle(),
                const SizedBox(height: 15),
                JumpBackInSection(jumpBackInAlbums: jumpBackInAlbums),
                const SizedBox(height: 50),
                const RecentlyPlayedTitle(),
                const SizedBox(height: 15),
                RecentlyPlayedSection(recentlyPlayedAlbums: recentlyPlayedAlbums),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PlayBar(
            name: currentSong["name"]!,
            artist: currentSong["artist"]!,
            art: currentSong["art"]!,
          ),
          Container(
            height: 60,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, color: Colors.white),
                Icon(Icons.search, color: Colors.white),
                Icon(Icons.library_music, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  
}
}
