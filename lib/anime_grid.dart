import 'package:flutter/material.dart';
import 'package:project_manga/anime_card.dart';
import 'package:project_manga/models/listKomik.dart';

class AnimeGrid extends StatelessWidget {
  final List<Manga> komik;

  const AnimeGrid({super.key, required this.komik});

  @override
  Widget build(BuildContext context) {
    if (komik.isEmpty) {
      return const SliverToBoxAdapter(
        // Wrap with Sliver
        child: Center(
          child: Text('No manga available', style: TextStyle(fontSize: 16)),
        ),
      );
    }

    final screenWidth = MediaQuery.of(context).size.width;

    // Responsive grid calculation
    final crossAxisCount =
        screenWidth > 1400
            ? 6
            : screenWidth > 1100
            ? 5
            : screenWidth > 800
            ? 4
            : screenWidth > 600
            ? 3
            : 2;

    final childAspectRatio = screenWidth > 600 ? 0.65 : 0.75;

    return SliverPadding(
      // Ganti Padding biasa dengan SliverPadding
      padding: const EdgeInsets.all(12.0),
      sliver: SliverGrid(
        // Ganti GridView.builder dengan SliverGrid
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: childAspectRatio,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          final anime = komik[index];
          return AnimeCard(
            anime: anime,
            onTap: () {
              // Add navigation logic here
            },
          );
        }, childCount: komik.length),
      ),
    );
  }
}
