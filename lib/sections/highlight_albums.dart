import 'package:flutter/material.dart';

class HighlightAlbums extends StatelessWidget{
  final List highlightAlbumsList;
  const HighlightAlbums({
    super.key,
    required this.highlightAlbumsList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding : const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: highlightAlbumsList.length,
        itemBuilder: (context, index) {
          return HighlightAlbumBadge(
            album: highlightAlbumsList[index]['album']??"Titre Inconnu",
            art: highlightAlbumsList[index]['art']??"images/tfc_logo.jpg",
          ); 
        },
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          mainAxisExtent: 80,
          crossAxisSpacing: 10,
          
        ),
      ),
    );
  }
}

class HighlightAlbumBadge extends StatelessWidget{
  final String album;
  final String art;

  const HighlightAlbumBadge({
    super.key,
    required this.album,
    required this.art
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape : RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            SizedBox.square(
              dimension: 70,
              child: Image.asset(art, fit: BoxFit.cover,)
            ),
            Expanded(
              child: Container(
                padding : const EdgeInsets.only(left: 10),
                height: 70,
                color: const Color(0xff222222),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    album,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      ),
                    )
                    )
              ),
              )
        ],
        ),
      ),
      onTap: () {},
    );
  }
}