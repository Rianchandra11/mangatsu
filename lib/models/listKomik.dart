class Manga {
  final int id;
  final String title;
  final String linkGambar;
  final String chapter;
  final String status;
  final String sinopsis;
  final String release;
  final List<String> genre;
  final String author;
  final bool bookmark;
  final int likes;
  final int view;
  final double rating;
  const Manga({
    required this.id,
    required this.title,
    required this.linkGambar,
    required this.chapter,
    required this.status,
    required this.sinopsis,
    required this.release,
    required this.genre,
    required this.author,
    this.bookmark = false,
    required this.likes,
    required this.view,
    required this.rating,
  });
}

final allGenre = allKomik.expand((m) => m.genre).toSet().toList()..sort();

final allKomik = [
  Manga(
    id: 1,
    title: "Kimetsu No Yaiba",
    linkGambar:
        "https://i2.wp.com/komikstation.co/wp-content/uploads/2018/01/Kimetsu-no-Yaiba.png",
    chapter: "205",
    status: "Completed",
    release: "2016",
    author: "GOTOUGE Koyoharu",
    genre: ["Action", "Adventure", "Drama"],
    sinopsis:
        "Tanjiro merupakan anak sulung dari keluarga yang kehilangan ayahnya...",
    rating: 4.8,
    likes: 1480,
    view: 1450,
  ),
  Manga(
    id: 2,
    title: "One Piece",
    linkGambar:
        "https://i1.wp.com/komikstation.co/wp-content/uploads/2017/11/One-Piece-Vol-106.png",
    chapter: "1211",
    status: "Ongoing",
    release: "1997",
    author: "Oda Eichiro",
    genre: [
      "Action",
      "Adventure",
      "Comedy",
      "Fantasy",
      "Martial Arts",
      "Mystery",
      "Shounen",
      "Supernatural",
    ],
    sinopsis: "Bercerita tentang seorang laki-laki bernama Monkey D. Luffy...",
    rating: 4.9,
    likes: 2150,
    view: 3050,
  ),
  Manga(
    id: 3,
    title: "Ruri Dragon",
    linkGambar:
        "https://i2.wp.com/komikstation.co/wp-content/uploads/2021/02/Ruri-Dragon-Vol-2.jpg",
    chapter: "31",
    status: "Ongoing",
    release: "2022",
    author: "FUJIMAKI Tadatoshi",
    genre: ["Action", "Comedy", "School Life", "Shounen", "Supernatural"],
    sinopsis:
        "Pembunuh bayaran Juzo Ogami dikenal sebagai legenda di dunia hitam...",
    rating: 4.5,
    likes: 980,
    view: 1100,
  ),
  Manga(
    id: 4,
    title: "Kill Blue",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2023/04/Kill-Blue-Vol-8.jpg",
    chapter: "93",
    status: "Ongoing",
    release: "2023",
    author: "FUJIMAKI Tadatoshi",
    genre: ["Action", "Comedy", "School Life", "Shounen", "Supernatural"],
    sinopsis:
        "Pembunuh bayaran Juzo Ogami dikenal sebagai legenda di dunia hitam...",
    rating: 4.4,
    likes: 760,
    view: 890,
  ),
  Manga(
    id: 5,
    title: "Komi-san wa Komyushou Desu",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2018/02/Komi-san-wa-Komyushou-Desu.jpg",
    chapter: "448",
    status: "Ongoing",
    release: "2016",
    author: "Oda Tomohito",
    genre: ["Comedy", "Romance", "School Life", "Shounen", "Slice Of Life"],
    sinopsis:
        "Komi-san adalah gadis cantik dan mengagumkan yang tak seorang pun bisa melepaskan pandangan kepadanya...",
    rating: 4.7,
    likes: 1320,
    view: 1600,
  ),
  Manga(
    id: 6,
    title: "Gachi Koi Maou-sama",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2023/04/Gachi-Koi-Maou-sama.jpg",
    chapter: "23",
    status: "Ongoing",
    release: "2023",
    author: "Moriya Haru",
    genre: ["Comedy", "Fantasy", "Romance", "Seinen"],
    sinopsis:
        "Seorang pahlawan bertugas untuk mengalahkan Raja Iblis demi perdamaian dunia...",
    rating: 4.2,
    likes: 670,
    view: 720,
  ),
  Manga(
    id: 7,
    title: "Taiyou no Ie",
    linkGambar:
        "https://i1.wp.com/komikstation.co/wp-content/uploads/2018/04/Taiyou-no-Ie-Cover.jpg",
    chapter: "40",
    status: "Ongoing",
    release: "2018",
    author: "Taamo",
    genre: [
      "Comedy",
      "Drama",
      "Romance",
      "School Life",
      "Shoujo",
      "Slice Of Life",
    ],
    sinopsis:
        "Waktu itu, sebuah rumah yang penuh dengan sihir – tempat dimana kamu yang menangis pun bisa tersenyum...",
    rating: 4.6,
    likes: 890,
    view: 950,
  ),
  Manga(
    id: 8,
    title: "Masamune-kun no Revenge: Engagement",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2023/04/Masamune-kun-no-Revenge-Engagement.jpg",
    chapter: "5",
    status: "Ongoing",
    release: "2023",
    author: "Takeoka Hazuki",
    genre: ["Comedy", "Romance"],
    sinopsis:
        "Sudah satu tahun berlalu sejak Makabe Masamune dan Adagaki Aki bertemu...",
    rating: 4.3,
    likes: 560,
    view: 600,
  ),
  Manga(
    id: 9,
    title: "Osananajimi no Ohimesama",
    linkGambar:
        "https://i1.wp.com/komikstation.co/wp-content/uploads/2022/12/Osananajimi-no-Ohimesama.jpg",
    chapter: "47",
    status: "Completed",
    release: "2023",
    author: "9'C",
    genre: ["Comedy", "Romance", "Shounen"],
    sinopsis:
        "Persahabatan vs. cinta…!? Komedi romantis cinta segitiga tentang terjebak di antara dua putri...",
    rating: 4.5,
    likes: 700,
    view: 800,
  ),
  Manga(
    id: 10,
    title: "Onnanoko wa Otoko no Tame no Kisekae Ningyouja Nenda yo",
    linkGambar:
        "https://i2.wp.com/komikstation.co/wp-content/uploads/2023/12/Onnanoko-wa-Otoko-no-Tame-no-Kisekae-Ningyouja-Nenda-yo-Vol-1.jpg",
    chapter: "10",
    status: "Ongoing",
    release: "2023",
    author: "Ziki Masaya",
    genre: ["Comedy", "Romance"],
    sinopsis: "女の子は男の為の着せ替え人形じゃねーんだよ...",
    rating: 4.3,
    likes: 400,
    view: 500,
  ),
  Manga(
    id: 11,
    title: "Kekkon shiyou. Rikon zentei de",
    linkGambar:
        "https://i3.wp.com/komikstation.co/wp-content/uploads/2024/07/Kekkon-shiyou.-Rikon-zentei-de.-Vol-1.png",
    chapter: "2",
    status: "Ongoing",
    release: "2023",
    author: "Sakaguchi Azuma",
    genre: ["Comedy", "Josei", "Romance"],
    sinopsis: "Sebagai seorang NEET yang kini genap 30 tahun...",
    rating: 4.1,
    likes: 350,
    view: 400,
  ),
  Manga(
    id: 12,
    title: "Exorcist wo Otosenai",
    linkGambar:
        "https://i2.wp.com/komikstation.co/wp-content/uploads/2022/07/Exorcist-wo-Otosenai.jpg",
    chapter: "44",
    status: "Ongoing",
    release: "2021",
    author: "Arima Aruma",
    genre: ["Comedy", "Romance", "Shounen", "Supernatural"],
    sinopsis:
        "Sebagai pengusir setan terkuat, seorang anak laki-laki yang dipilih oleh Tuhan...",
    rating: 4.4,
    likes: 580,
    view: 720,
  ),
  Manga(
    id: 13,
    title: "Plunderer",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2018/04/14405.jpg",
    chapter: "82",
    status: "Ongoing",
    release: "2014",
    author: "Minazuki Zuu",
    genre: [
      "Action",
      "Adventure",
      "Comedy",
      "Drama",
      "Ecchi",
      "Romance",
      "Seinen",
      "Supernatural",
    ],
    sinopsis:
        "Tahun 305 Kalender Alcian, dan dunia saat ini dikendalikan oleh “Numbers”...",
    rating: 4.7,
    likes: 890,
    view: 1100,
  ),
  Manga(
    id: 14,
    title: "Nidome no Jinsei wo Isekai de",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2018/02/Nidome-no-Jinsei-wo-Isekai-de.jpg",
    chapter: "49",
    status: "Ongoing",
    release: "2016",
    author: "Main",
    genre: [
      "Action",
      "Adventure",
      "Comedy",
      "Drama",
      "Ecchi",
      "Fantasy",
      "Harem",
      "Isekai",
      "Romance",
      "Shounen",
    ],
    sinopsis: "Kunugi Renya merupakan sosok yang sudah tiada di usia tuanya...",
    rating: 4.6,
    likes: 780,
    view: 950,
  ),
  Manga(
    id: 15,
    title: "Tower Dungeon",
    linkGambar:
        "https://i3.wp.com/komikstation.co/wp-content/uploads/2024/03/Tower-Dungeon-Vol-1.jpg",
    chapter: "16",
    status: "Ongoing",
    release: "2025",
    author: "NIHEI Tsutomu",
    genre: [
      "Action",
      "Adventure",
      "Drama",
      "Fantasy",
      "Supernatural",
      "Shounen",
    ],
    sinopsis:
        "Latarnya adalah kerajaan tertentu. Untuk menyelamatkan putri kerajaan yang diculik...",
    rating: 4.5,
    likes: 650,
    view: 700,
  ),
  Manga(
    id: 16,
    title: "Igyou Atama-san to Ningen-chan",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2025/01/Igyou-Atama-san-to-Ningen-chan-Vol-2.jpg",
    chapter: "24",
    status: "Ongoing",
    release: "2022",
    author: "Miketama",
    genre: ["Isekai", "Josei", "Romance", "Slice of Life"],
    sinopsis:
        "Tokoh utama, yang bekerja keras sebagai budak perusahaan/Wanita kantoran...",
    rating: 4.3,
    likes: 520,
    view: 600,
  ),
  Manga(
    id: 17,
    title: "Sekai Ni Hitori, Zenzokusei Mahou no Tsukaite",
    linkGambar:
        "https://i3.wp.com/komikstation.co/wp-content/uploads/2023/02/Sekai-ni-Hitori-Zenzokusei-Mahou-no-Tsukaite-Vol-1.jpg",
    chapter: "38",
    status: "Ongoing",
    release: "2022",
    author: "Katanakaji",
    genre: ["Action", "Adventure", "Fantasy", "Seinen"],
    sinopsis:
        "Setelah kecelakaan lalu lintas, Zenichi Kiyama, seorang pekerja kantoran yang rendah hati...",
    rating: 4.2,
    likes: 490,
    view: 550,
  ),
  Manga(
    id: 18,
    title: "Reincarnation no kaben",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2018/10/Reincarnation-no-Kaben-Vol-18.jpg",
    chapter: "66",
    status: "Ongoing",
    release: "2014",
    author: "KONISHI mikihisa",
    genre: [
      "Action",
      "Adventure",
      "Horror",
      "Psychological",
      "Shounen",
      "Supernatural",
      "Tragedy",
    ],
    sinopsis:
        "Berusaha keras untuk menemukan bakatnya, Senji Touya mencoba semua yang ia bisa...",
    rating: 4.4,
    likes: 730,
    view: 850,
  ),
  Manga(
    id: 19,
    title: "Isekai de Slow Life wo (Ganbou)",
    linkGambar:
        "https://i1.wp.com/komikstation.co/wp-content/uploads/2022/01/Isekai-de-Slow-Life-wo-Ganbou.jpg",
    chapter: "51",
    status: "Ongoing",
    release: "2019",
    author: "Shige",
    genre: ["Action", "Adventure", "Ecchi", "Harem", "Isekai", "Shounen"],
    sinopsis:
        "Dengan kehendak sang dewi, Itsuki Shinomiya diberi hak istimewa untuk memilih berbagai kemampuan...",
    rating: 4.5,
    likes: 710,
    view: 820,
  ),
  Manga(
    id: 20,
    title:
        "Kage no jitsuryokusha ni Naritakute! Master of Garden : Shichikage Retsuden",
    linkGambar:
        "https://i1.wp.com/komikstation.co/wp-content/uploads/2024/06/Kage-no-Jitsuryokusha-ni-Naritakute-Master-of-Garden-Shichikage-Retsuden.jpg",
    chapter: "9",
    status: "Ongoing",
    release: "2024",
    author: "AIZAWA Daisuke",
    genre: [
      "Action",
      "Adventure",
      "Comedy",
      "Fantasy",
      "Harem",
      "Isekai",
      "Shounen",
    ],
    sinopsis:
        "Cid Kaguenou, seorang anak laki-laki yang menikmati setting The Eminence in Shadow...",
    rating: 4.3,
    likes: 480,
    view: 500,
  ),
];
