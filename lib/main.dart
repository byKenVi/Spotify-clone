import 'package:flutter/material.dart';
import 'sections/background.dart';
import 'sections/tfc_logo.dart';
import 'top_bar.dart';
import 'sections/highlight_albums.dart';
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
    "name": "Album 1",
    "art": "images/album1.jpg"
  },
  {
    "name": "Album 2",
    "art": "images/album2.jpg"
  },
  {
    "name": "Album 3",
    "art": "images/album3.jpg"
  },
  {
    "name": "Album 4",
    "art": "images/album4.jpg"
  },
  {
    "name": "Album 5",
    "art": "images/album5.jpg"
  },
  {
    "name": "Album 6",
    "art": "images/album6.jpg"
  },
  
  ];

  List favoriteArtistsList = [{
    "name": "Artist 1",
    "art": "images/artist1.jpg"
  },
  {
    "name": "Artist 2",
    "art": "images/artist2.jpg"
  },
  {
    "name": "Artist 3",
    "art": "images/artist3.jpg"
  },
  {
    "name": "Artist 4",
    "art": "images/artist4.jpg"
  },
  
  ];
  List jumpBackInAlbums = [
    {
      "artiste": "Artist 5",
      "album": "Album 5",
      "art": "images/album5.jpg",
    },
    {
      "artiste": "Artist 6",
      "album": "Album 6",
      "art": "images/album6.jpg",
    },
    {
      "artiste": "Artist 3",
      "album": "Album 3",
      "art": "images/album3.jpg",
    },
    {
      "artiste": "Artist 4",
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
              ],
            )
          ],
        ),
      )
    );
  
}
}
