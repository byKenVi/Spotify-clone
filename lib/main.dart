import 'package:flutter/material.dart';
import 'sections/background.dart';
import 'sections/tfc_logo.dart';
import 'top_bar.dart';
import 'sections/highlight_albums.dart';
import 'sections/favourite_artists.dart';
import 'sections/jump_back_in.dart';
import 'sections/recently_played.dart';

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
    "album": "Album 1",
    "art": "images/album1.jpg"
  },
  {
    "album": "Album 2",
    "art": "images/album2.jpg"
  },
  {
    "album": "Album 3",
    "art": "images/album3.jpg"
  },
  {
    "album": "Album 4",
    "art": "images/album4.jpg"
  },
  {
    "album": "Album 5",
    "art": "images/album5.jpg"
  },
  {
    "album": "Album 6",
    "art": "images/album6.jpg"
  },
  
  ];

  List favoriteArtistsList = [{
    "album": "Artist 1",
    "art": "images/artist1.jpg"
  },
  {
    "album": "Artist 2",
    "art": "images/artist2.jpg"
  },
  {
    "album": "Artist 3",
    "art": "images/artist3.jpg"
  },
  {
    "album": "Artist 4",
    "art": "images/artist4.jpg"
  },
  
  ];
  List jumpBackInAlbums = [
    {
      "artist": "Artist 5",
      "album": "Album 5",
      "art": "images/album5.jpg",
    },
    {
      "artist": "Artist 6",
      "album": "Album 6",
      "art": "images/album6.jpg",
    },
    {
      "artist": "Artist 3",
      "album": "Album 3",
      "art": "images/album3.jpg",
    },
    {
      "artist": "Artist 4",
      "album": "Album 4",
      "art": "images/album4.jpg",
    },

  ];

  List recentlyPlayedAlbums = [
    {
      "album": "Album 1",
      "art": "images/album1.jpg",
    },
    {
      "album": "Album 2",
      "art": "images/album2.jpg",
    },
    {
      "album": "Album 3",
      "art": "images/album3.jpg",
    },
    {
      "album": "Album 4",
      "art": "images/album4.jpg",
    },

  ];

  Map currentSong = {
    "name": "Song 1",
    "artist": "Artist 1",
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
      )
    );
  
}
}
