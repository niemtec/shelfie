import 'package:flutter/material.dart';

class HorizontalScrollGallery extends StatefulWidget {
  const HorizontalScrollGallery({super.key});

  @override
  State<HorizontalScrollGallery> createState() => _HorizontalScrollGalleryState();
}

class _HorizontalScrollGalleryState extends State<HorizontalScrollGallery> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        itemCount: 10,
        controller: PageController(viewportFraction: 0.5),
        onPageChanged: (int index) => setState(() => _index = index),
        itemBuilder: (_, i) {
          return Transform.scale(
            scale: i == _index ? 1 : 0.85,
            child: MovieCard(),
          );
        },
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title", style: Theme.of(context).textTheme.headlineMedium),
            Text("Subtitle", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
