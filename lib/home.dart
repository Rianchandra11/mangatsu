import 'package:flutter/material.dart';
import 'package:project_manga/listKomik.dart';
import 'package:project_manga/profil.dart';
import 'package:project_manga/bytitle.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
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

  void cariKomik(String title) {
    final cari =
        komik.where((manga) {
          final komiktitle = manga.title.toLowerCase();
          final input_title = title.toLowerCase();

          return komiktitle.contains(input_title);
        }).toList();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MangaByTitle(title: title, komikS: cari),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size(30.0, 55.0),
              child: Row(
                children: [
                  Expanded(child: Text("")),
                  SizedBox(
                    width: 250,
                    child:
                        _isSearchActive
                            ? SizedBox(
                              width: 50,
                              height: 50,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 10, left: 10),
                                child: TextField(
                                  controller: _searchController,
                                  onSubmitted: (title) => cariKomik(title),
                                  decoration: InputDecoration(
                                    hintText: 'Search...',
                                    hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                    border: OutlineInputBorder(
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
                                icon: Icon(
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
            title: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Image.asset('assets/logo/LogoM1.png', width: 50),
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
              icon: Icon(Icons.menu, color: Colors.white, size: 50),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profil()),
                  );
                },
                icon: Icon(Icons.person),
                color: Colors.white,
                iconSize: 50,
              ),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                mainAxisExtent: 250,
              ),
              itemCount: komik.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(100, 40, 46, 51),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Image.network(
                        komik[index].linkGambar,
                        width: 160,
                        height: 150,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          komik[index].title.length > 15
                              ? '${komik[index].title.substring(0, 15)}...'
                              : komik[index].title,

                          style: TextStyle(fontFamily: 'Tiro', fontSize: 15),
                        ),
                      ),
                      Text(
                        "Chapter " + komik[index].chapter,
                        style: TextStyle(fontFamily: 'Tiro', fontSize: 14),
                      ),
                      Text(
                        "Status: " + komik[index].status,
                        style: TextStyle(fontFamily: 'Tiro', fontSize: 14),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
