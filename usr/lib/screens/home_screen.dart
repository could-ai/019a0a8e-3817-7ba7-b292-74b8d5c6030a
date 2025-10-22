import 'package:flutter/material.dart';
import '../models/anime.dart';
import '../widgets/anime_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder data
    final List<Anime> trendingAnime = [
      Anime(
          title: 'Anime Title 1',
          imageUrl: 'https://via.placeholder.com/150x220',
          episodes: []),
      Anime(
          title: 'Anime Title 2',
          imageUrl: 'https://via.placeholder.com/150x220',
          episodes: []),
      Anime(
          title: 'Anime Title 3',
          imageUrl: 'https://via.placeholder.com/150x220',
          episodes: []),
      Anime(
          title: 'Anime Title 4',
          imageUrl: 'https://via.placeholder.com/150x220',
          episodes: []),
      Anime(
          title: 'Anime Title 5',
          imageUrl: 'https://via.placeholder.com/150x220',
          episodes: []),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime Stream'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Section
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey.shade800,
              child: const Center(
                child: Text(
                  'Main Banner',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Trending Now Section
            _buildSectionTitle('Trending Now'),
            const SizedBox(height: 16),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: trendingAnime.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: AnimeCard(anime: trendingAnime[index]),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),

            // New Release Section
            _buildSectionTitle('New Releases'),
            const SizedBox(height: 16),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: trendingAnime.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: AnimeCard(anime: trendingAnime[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
