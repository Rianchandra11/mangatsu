import 'package:flutter/material.dart';
import 'listKomik.dart';
import 'bytitle.dart';
class Bygenre extends StatefulWidget {
  final Set genre;
  final List manga;
  const Bygenre({super.key, required this.manga,required this.genre});

  @override
  State<Bygenre> createState() => _BygenreState();
}

class _BygenreState extends State<Bygenre> {
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
        ));
      });
      
     
    }
  
  @override
  Widget build(BuildContext context) {
    print(widget.manga);
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
                              child: Padding(padding: EdgeInsets.only(bottom: 10,left: 10),
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
                                      borderSide: BorderSide(color: Colors.black),
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
                              )
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
                  Image.asset('assets/logo/LogoM1.png', width: 40),
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
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.white,
                iconSize: 50,
              ),
            ],
          ),
          widget.manga.isEmpty
              ? SliverToBoxAdapter(child: Center(child: Column(children: [
                Text("Tidak ditemukan manga berjudul ${widget.genre.join(', ')}",
                style: TextStyle(fontFamily: 'Inter',fontSize: 16),),
                Icon(Icons.search_off)
              ],)))
              : SliverToBoxAdapter(child: Center(child: Text("Ditemukan Manga Bergenre : ${widget.genre.join(', ')}\nSebanyak : ${widget.manga.length}",style: TextStyle(fontFamily: 'Inter',fontSize: 15),)),),SliverPadding(
                padding: EdgeInsets.all(8.0),
                sliver: 
                    SliverGrid.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5.0,
                          crossAxisSpacing: 5.0,
                          mainAxisExtent: 250
                        ),

                        itemCount: widget.manga.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(100, 40, 46, 51),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image.network(widget.manga[index].linkGambar,width: 160,height: 150,),
                                Text(
                                  widget.manga[index].title.length > 15 ? '${widget.manga[index].title.substring(0,15)}...' 
                                  : 
                                  widget.manga[index].title,style: TextStyle(fontFamily: 'Tiro',fontSize: 15),),
                                Text("Chapter " + widget.manga[index].chapter,style: TextStyle(fontFamily: 'Tiro',fontSize: 14),),
                                Text("Status: " + widget.manga[index].status,style: TextStyle(fontFamily: 'Tiro',fontSize: 14),)
                              ],
                            ),
                          );
                        },
                ),
              )
        ],
      ),
    );
  }
}