import 'package:flutter/material.dart';
import 'package:project_manga/anime_grid.dart';
import 'package:project_manga/models/listKomik.dart';

class MangaByTitle extends StatefulWidget {
  final String title;
  final List<Manga> komikS;
  const MangaByTitle({super.key, required this.title, required this.komikS});

  @override
  State<MangaByTitle> createState() => _MangaByTitleState();
}

class _MangaByTitleState extends State<MangaByTitle> {
  List<Manga> komik = allKomik;
  final TextEditingController _searchController = TextEditingController();
  bool _isSearchActive = false;

  void _toggleSearch() {
    setState(() {
      _isSearchActive = !_isSearchActive;
      if (!_isSearchActive) {
        _searchController.clear();
      }
    });
  }

  void cariKomik(String titlek) {
    final cari =
        komik.where((manga) {
          final komiktitle = manga.title.toLowerCase();
          final input_title = titlek.toLowerCase();
          return komiktitle.contains(input_title);
        }).toList();

    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MangaByTitle(title: titlek, komikS: cari),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size(30.0, 55.0),
              child: Row(
                children: [
                  const Expanded(child: Text("")),
                  SizedBox(
                    width: 250,
                    child:
                        _isSearchActive
                            ? SizedBox(
                              width: 50,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 10,
                                  left: 10,
                                ),
                                child: TextField(
                                  controller: _searchController,
                                  onSubmitted: (title) => cariKomik(title),
                                  decoration: InputDecoration(
                                    hintText: 'Search...',
                                    hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: _toggleSearch,
                                    ),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                            : Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                onPressed: _toggleSearch,
                              ),
                            ),
                  ),
                ],
              ),
            ),
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/logo/LogoM1.png'), width: 40),
                  Text(
                    "angaTsu",
                    style: TextStyle(
                      fontFamily: 'Tilt',
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, color: Colors.white, size: 50),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
                color: Colors.white,
                iconSize: 50,
              ),
            ],
          ),
          widget.komikS.isEmpty
              ? SliverToBoxAdapter(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Tidak ditemukan manga berjudul ${widget.title}",
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                        ),
                      ),
                      const Icon(Icons.search_off),
                    ],
                  ),
                ),
              )
              : SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    "Ditemukan Manga Berjudul : ${widget.title}\nSebanyak : ${widget.komikS.length}",
                    style: const TextStyle(fontFamily: 'Inter', fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          // Menggunakan AnimeGrid di sini
          AnimeGrid(komik: widget.komikS),
        ],
      ),
    );
  }
}
