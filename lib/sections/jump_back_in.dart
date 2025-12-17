import 'package:flutter/material.dart';

class JumpBackInTitle extends StatelessWidget{
  const JumpBackInTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Jump Back In',
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
  class JumpBackInBadge extends StatelessWidget {
  final String artist;
  final String art;
  final String album;
  const JumpBackInBadge({
    super.key,
    required this.artist,
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
            artist,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(children: [
            const Text(
              'Album ',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            CustomPaint(
              size: const Size(4, 4),
              painter: DotPainter(),
            ),
            Text(
              ' $album',
              style: const TextStyle(
                color: Colors.grey,
              ),
            )
          ],),
          const SizedBox(height: 20),
        ],
        ),
        onTap: () {},
      ),
    );
  }
}

class DotPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 4
      ..style = PaintingStyle.fill;

    final center = Offset(
      size.width / 2,
      size.height / 2,
    );

    final radius = size.width / 2;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class JumpBackInSection extends StatelessWidget {
  final List jumpBackInAlbums;
  const JumpBackInSection({
    super.key,
    required this.jumpBackInAlbums
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: jumpBackInAlbums.map((albumData) {
            return JumpBackInBadge(
              artist: albumData['artist'],
              art: albumData['art'],
              album: albumData['album'],
            );
          }).toList(),
        ),
      ),
    );
  }
}