import 'episode.dart';

class Anime {
  final String title;
  final String imageUrl;
  final List<Episode> episodes;
  // Add other fields like description, genre, etc.

  Anime({
    required this.title,
    required this.imageUrl,
    required this.episodes,
  });
}
