class Manga {
  final String title;
  final String linkGambar;
  final String chapter;
  final String status;
  final String sinopsis;
  final String release;
  final List<String> genre;
  final String author;
  final bool bookmark;
  final bool like;
  const Manga({
    required this.title,
    required this.linkGambar,
    required this.chapter,
    required this.status,
    required this.sinopsis,
    required this.release,
    required this.genre,
    required this.author,
    this.bookmark = false,
    this.like = false,
  });
}

final allGenre = allKomik
    .expand((m) => m.genre)
    .toSet()
    .toList()..sort();

const allKomik = [
  Manga(
    title: "Kimetsu No Yaiba",
    linkGambar:
        "https://i2.wp.com/komikstation.co/wp-content/uploads/2018/01/Kimetsu-no-Yaiba.png",
    chapter: "205",
    status: "Completed",
    release: "2016",
    author: "GOTOUGE Koyoharu",
    genre: ["Action", "Adventure", "Drama"],
    sinopsis:
        "Tanjiro merupakan anak sulung dari keluarga yang kehilangan ayahnya. Suatu hari Tanjiro mengunjungi kota lain untuk menjual arang tapi berakhir menginap di rumah orang lain ketimbang pulang karena rumor tentang iblis yang mengintai di gunung pada malam hari. Ketika ia pulang pada hari berikutnya, tragedi telah menunggunya.",
  ),
  Manga(
    title: "One Piece",
    linkGambar:
        "https://i1.wp.com/komikstation.co/wp-content/uploads/2017/11/One-Piece-Vol-106.png",
    chapter: "1211",
    status: "Ongoing",
    sinopsis:
        "Bercerita tentang seorang laki-laki bernama Monkey D. Luffy, yang menentang arti dari gelar bajak laut. Daripada kesannama besar, kejahatan, kekerasan, dia lebih terlihat seperti bajak laut rendahan yang suka bersenang-senang, alasanLuffy menjadi bajak laut adalah tekadnya untuk berpetualang di lautan yang menyenangkan dan bertemu orang-orangbaru dan menarik, sertabersama-sama mencari One Piece.",
    release: "1997",
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
    author: "Oda Eichiro",
  ),
  Manga(
    title: "Ruri Dragon",
    linkGambar:
        "https://i2.wp.com/komikstation.co/wp-content/uploads/2021/02/Ruri-Dragon-Vol-2.jpg",
    chapter: "31",
    status: "Ongoing",
    sinopsis:
        "Pembunuh bayaran Juzo Ogami dikenal sebagai legenda di dunia hitam yang sangat terampil. Namun dirinya memiliki masalah jati diri yang membuatnya ditinggal oleh putri dan istrinya. Pada sebuah misi yang dia lakoni, terdapat kejadian tidak terduga yang membuat dirinya kembali menjadi anak-anak karena sebuah sengatan lebah laboratorium. Setelah dia kebingungan menafkahi putri dan mantan istrinya, dia ditawari pekerjaan untuk mencoba bersekolah di SMP Swasta yang akan dimasuki oleh putri bosnya. Dirinya yang bahkan dulu tidak lulus SD, kini mendapat kesempatan kembali untuk bersekolah. Dapatkah dia mendapatkan jati diri dan membuat hidupnya lebih berwarna?",
    release: "2022",
    genre: ["Action", "Comedy", "School Life", "Shounen", "Supernatural"],
    author: "FUJIMAKI Tadatoshi",
  ),
  Manga(
    title: "Kill Blue",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2023/04/Kill-Blue-Vol-8.jpg",
    chapter: "93    ",
    status: "Ongoing",
    sinopsis:
        "Pembunuh bayaran Juzo Ogami dikenal sebagai legenda di dunia hitam yang sangat terampil. Namun dirinya memiliki masalah jati diri yang membuatnya ditinggal oleh putri dan istrinya. Pada sebuah misi yang dia lakoni, terdapat kejadian tidak terduga yang membuat dirinya kembali menjadi anak-anak karena sebuah sengatan lebah laboratorium. Setelah dia kebingungan menafkahi putri dan mantan istrinya, dia ditawari pekerjaan untuk mencoba bersekolah di SMP Swasta yang akan dimasuki oleh putri bosnya. Dirinya yang bahkan dulu tidak lulus SD, kini mendapat kesempatan kembali untuk bersekolah. Dapatkah dia mendapatkan jati diri dan membuat hidupnya lebih berwarna?",
    release: "2023",
    genre: ["Action", "Comedy", "School Life", "Shounen", "Supernatural"],
    author: "FUJIMAKI Tadatoshi",
  ),
  Manga(
    title: "Komi-san wa Komyushou Desu",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2018/02/Komi-san-wa-Komyushou-Desu.jpg",
    chapter: "448    ",
    status: "Ongoing",
    sinopsis:
        "Komi-san adalah gadis cantik dan mengagumkan yang tak seorang pun bisa melepaskan pandangan kepadanya. Hampir seluruh sekolah menganggapnya sebagai kecantikan yang dingin, tapi Tadano Hitohito mengetahui yang sebenarnya bahwa dirinya benar-benar buruk dalam berkomunikasi dengan orang lain. Komi-san, yang ingin memperbaiki kebiasaan buruknya ini, mencoba memperbaikinya dengan bantuan Tadano-kun dengan mencapai tujuannya memiliki 100 teman.",
    release: "2016",
    genre: ["Comedy", "Romance", "School Life", "Shounen", "Slice Of Life"],
    author: "Oda Tomohito",
  ),
  Manga(
    title: "Gachi Koi Maou-sama",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2023/04/Gachi-Koi-Maou-sama.jpg",
    chapter: "23    ",
    status: "Ongoing",
    sinopsis:
        "Seorang pahlawan bertugas untuk mengalahkan Raja Iblis demi perdamaian dunia. Ketika ia tiba di istana Raja Iblis, ia disambut oleh Raja Iblis dengan sertifikat pernikahan di tangannya! Sang pahlawan bingung dengan rayuan Raja Iblis yang kuat untuk menikahinya, tetapi…? Sebuah kisah romantis antara iblis yang jatuh cinta dengan pahlawan yang sedang mencoba menyelamatkan dunia!",
    release: "2023",
    genre: [
      "Comedy",
      "Fantasy",
      "Romance",
      "Seinen",
    ],
    author: "Moriya Haru",
  ),
  Manga(
    title: "Taiyou no Ie",
    linkGambar:
        "https://i1.wp.com/komikstation.co/wp-content/uploads/2018/04/Taiyou-no-Ie-Cover.jpg",
    chapter: "40    ",
    status: "Ongoing",
    sinopsis:
        "Waktu itu, sebuah rumah yang penuh dengan sihir – tempat dimana kamu yang menangispun bisa tersenyum. Tentu saja, penyihir ulung tersembunyi tinggal disana. Begitulah menurutku.” Apa yang dilakukan seorang anak kecil ketika ibunya menceraikan ayahnya demi pria lain? Atau ketika ayahnya menikahi seorang wanita yang sudah punya anak dari pernikahan sebelumnya? Atau ketika seorang tetangga semasa kecilnya mengajaknya untuk tinggal bersamanya?",
    release: "2018",
    genre: [
      "Comedy",
      "Drama",
      "Romance",
      "School Life",
      "Shoujo",
      "Slice Of Life",
    ],
    author: "Taamo",
  ),
  Manga(
    title: "Masamune-kun no Revenge: Engagement",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2023/04/Masamune-kun-no-Revenge-Engagement.jpg",
    chapter: "5    ",
    status: "Ongoing",
    sinopsis:
        "Sudah satu tahun berlalu sejak Makabe Masamune dan Adagaki Aki bertemu, dan untuk sementara waktu mereka menjalani hubungan jarak jauh ketika Aki pindah ke Sapporo untuk kuliah. Koiwai Yoshino, yang terus tinggal di rumah Aki, akhirnya diterima di Universitas Juntama setelah gagal dalam ujian masuk tahun lalu, dan ia bertemu kembali dengan Makabe, yang sekarang menjadi mahasiswa tahun kedua di sini. Namun, masalah segera dimulai ketika mereka diseret ke dalam permainan oleh mahasiswa baru Iroha, dan dia mengklaim Makabe, yang secara tidak sengaja “memenangkan” permainan, sebagai “kekasihnya” di luar keinginannya …",
    release: "2023",
    genre: ["Comedy", "Romance"],
    author: "Takeoka Hazuki",
  ),
  Manga(
    title: "Osananajimi no Ohimesama",
    linkGambar:
        "https://i1.wp.com/komikstation.co/wp-content/uploads/2022/12/Osananajimi-no-Ohimesama.jpg",
    chapter: "47",
    status: "Completed",
    sinopsis:
        "Persahabatan vs. cinta…!? Komedi romantis cinta segitiga tentang terjebak di antara dua putri!! Shunsuke dan Hinaki adalah teman masa kecil yang masuk SMA bersama. Mereka selalu berteman baik, tetapi teman sekelas baru mereka salah mengira mereka sebagai",
    release: "2023",
    genre: ["Comedy", "Romance", "Shounen"],
    author: "9'C",
  ),
  Manga(
    title: "Onnanoko wa Otoko no Tame no Kisekae Ningyouja Nenda yo",
    linkGambar:
        "https://i2.wp.com/komikstation.co/wp-content/uploads/2023/12/Onnanoko-wa-Otoko-no-Tame-no-Kisekae-Ningyouja-Nenda-yo-Vol-1.jpg",
    chapter: "10",
    status: "Ongoing",
    sinopsis:
        "女の子は男の為の着せ替え人形じゃねーんだよ, カワイイ恋は着飾らない, Kawaii Koi wa Kikazaranai, I'm Not Some Man's Dress-Up-Doll!, Girls Are Not Dress-up Dolls for the Sake of Men, Don't Dress Up My Sweet Sweet Love",
    release: "2023",
    genre: ["Comedy", "Romance"],
    author: "Ziki Masaya",
  ),
  Manga(
    title: "Kekkon shiyou. Rikon zentei de",
    linkGambar:
        "https://i3.wp.com/komikstation.co/wp-content/uploads/2024/07/Kekkon-shiyou.-Rikon-zentei-de.-Vol-1.png",
    chapter: "2",
    status: "Ongoing",
    sinopsis:
        "Sebagai seorang NEET yang kini genap 30 tahun, Kyousuke di usir dari rumah orang tuanya.     Disaat itulah juga, Rui, teman terdekat nya, mengusulkan sebuah solusi : yaitu menikah, lalu bercerai!Seorang pria dan wanita yang telah menjadi “teman” selama 1 dekade kini memutuskan untuk melakukan pernikahan palsu.Seorang pria romantis dengan wanita yang pragmatis. Pasangan yang benar benar tidak serasi.Apa yang akan mereka temukan setelah 100 hari bersama?",
    release: "2023",
    genre: ["Comedy", "Josei", "Romance"],
    author: "Sakaguchi Azuma",
  ),
  Manga(
    title: "Exorcist wo Otosenai",
    linkGambar:
        "https://i2.wp.com/komikstation.co/wp-content/uploads/2022/07/Exorcist-wo-Otosenai.jpg",
    chapter: "44",
    status: "Ongoing",
    sinopsis:
        "Sebagai pengusir setan terkuat, seorang anak laki-laki yang dipilih oleh Tuhan terlibat dalam pertempuran mematikan dengan Raja Iblis. Meskipun dia menanggung nasib kemanusiaan di pundaknya, dia sebenarnya ingin membuat manisan dengan damai. Suatu hari, dia bertemu dengan seorang gadis…. Ini adalah kisah cinta dan harapan yang tumbuh di tengah perang suci.",
    release: "2021",
    genre: ["Comedy", "Romance", "Shounen", "Supernatural"],
    author: "Arima Aruma",
  ),
  Manga(
    title: "Plunderer",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2018/04/14405.jpg",
    chapter: "82",
    status: "Ongoing",
    sinopsis:
        "Tahun 305 Kalender Alcian, dan dunia saat ini dikendalikan oleh “Numbers”. Setiap manusia yang lahir dicap dengan “Count”. Dan jika Count mereka turun menjadi Nol maka mereka akan di kirim ke Abyss. Setelah Count Ibu Hina 0, permintaan terakhirnya adalah untuk mencari sang Legendaris Red Baron.",
    release: "2014",
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
    author: "Minazuki Zuu",
  ),
  Manga(
    title: "Nidome no Jinsei wo Isekai de",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2018/02/Nidome-no-Jinsei-wo-Isekai-de.jpg",
    chapter: "49",
    status: "Ongoing",
    sinopsis:
        "Kunugi Renya merupakan sosok yang sudah tiada di usia tuanya yakni di umur 94 tahun. Namun ia diminta Sang Dewi untuk menjalani hidup yang kedua kalinya di dunia lain. Dia yang kehilangan ingatannya di dunia lamanya kini harus terus melangkah maju di dunia lain. Kira-kira bagaimanakah nasib si Renya ini? Bagaimanakah kehidupan yang pernah dijalaninya dulu?",
    release: "2016",
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
    author: "Main",
  ),
  Manga(
    title: "Tower Dungeon",
    linkGambar:
        "https://i3.wp.com/komikstation.co/wp-content/uploads/2024/03/Tower-Dungeon-Vol-1.jpg",
    chapter: "16",
    status: "Ongoing",
    sinopsis:
        "Latarnya adalah kerajaan tertentu. Untuk menyelamatkan putri kerajaan yang di culik, skuadron pengawal raja menantang Menara naga, Sebuah bangunan raksasa yang melayang di tengah langit, tetapi mereka dihadang oleh iblis yang kuat. Sebuah provokasi dilakukan oleh desa tetangga untuk mengisi kembali personel yang terluka, dan ketika seorang pemuda dikirim ke menara, roda nasib mulai berputar. Kisah pedang & Sihir dan penjelajah labirin di mulai. ",
    release: "2025",
    genre: [
      "Action",
      "Adventure",
      "Drama",
      "Fantasy",
      "Supernatural",
      "Shounen",
    ],
    author: "NIHEI Tsutomu",
  ),
  Manga(
    title: "Igyou Atama-san to Ningen-chan",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2025/01/Igyou-Atama-san-to-Ningen-chan-Vol-2.jpg",
    chapter: "24",
    status: "Ongoing",
    sinopsis:
        "Tokoh utama, yang bekerja keras sebagai budak perusahaan/Wanita kantoran di dunia manusia, dipindahkan ke dunia lain dimana dia menjadi hewan peliharaan Aberrant Head-san. Meskipun mereka berdua memiliki perasaan romantis terhadap satu sama lain, sulit bagi mereka untuk mengembangkan hubungan mereka dengan perbedaan spesies yang menghalangi.",
    release: "2022",
    genre: ["Isekai", "Josei", "Romance", "Slice of life"],
    author: "Miketama",
  ),
  Manga(
    title: "Sekai Ni Hitori, Zenzokusei Mahou no Tsukaite",
    linkGambar:
        "https://i3.wp.com/komikstation.co/wp-content/uploads/2023/02/Sekai-ni-Hitori-Zenzokusei-Mahou-no-Tsukaite-Vol-1.jpg",
    chapter: "38",
    status: "Ongoing",
    sinopsis:
        "Setelah kecelakaan lalu lintas, Zenichi Kiyama, seorang pekerja kantoran yang rendah hati, bereinkarnasi sebagi bayi di dunia lain yang disebut Kompatibilitas Sempurna. Namun hasil penilain atribut dengan kristal adalah atribut gelap. Hasil terburuknya adalah dia adalah anak iblis.",
    release: "2022",
    genre: ["Action", "Adventure", "Fantasy", "Seinen"],
    author: "Katanakaji",
  ),
  Manga(
    title: "Reincarnation no kaben",
    linkGambar:
        "https://i0.wp.com/komikstation.co/wp-content/uploads/2018/10/Reincarnation-no-Kaben-Vol-18.jpg",
    chapter: "66",
    status: "Ongoing",
    sinopsis:
        "Berusaha keras untuk menemukan bakatnya, Senji touya mencoba semua yang ia bisa agar bisa menemukan nya. Kendou, menari, berenang, bola basket, sepak bola, catur... apapun yang dicobanya, ia tak pernah gagal melampauinya. Suatu hari, teman sekelasnya, Haito, datang kesekolah untuk pertama kalinya setelah sekian lama. Senji menyebutnya sebagai seseorang yang memilikinya, atau seseorang yang memiliki bakat. Belakangan, dia mengetahui bahwa dia bukan hanya seorang yang memiliki bakat, tetapi seseorang yang mengambil bakat dari dirinya sendiri di kehidupan masa lalunya. Dan, mereka yang mengambil bakat dari kehidupan masa lalunya, juga dikenal sebagai Pengembara.",
    release: "2014",
    genre: [
      "Action",
      "Adventure",
      "Horror",
      "Pyschological",
      "Shounen",
      "Supernatural",
      "Tragedy",
    ],
    author: "KONISHI mikihisa",
  ),
  Manga(
    title: "Isekai de Slow Life wo (Ganbou)",
    linkGambar:
        "https://i1.wp.com/komikstation.co/wp-content/uploads/2022/01/Isekai-de-Slow-Life-wo-Ganbou.jpg",
    chapter: "51",
    status: "Ongoing",
    sinopsis:
        "Dengan kehendak sang dewi, Itsuki shinomiya diberi hak istimewa unutuk memilih berbagai kemampuan dan dilahirkan kembali di dunia lain. Namun, sebelum pergi ke dunia lain, dia tidak ingin melibatkan diri dalam hal-hal menakutkan, kotor dan kotor seperti pertempuran.Dengan tekad kuat uuntuk menjalani kehidupan yang lambat, ia memilih keterampilan unik, memberinya sejumlah uang sekali sehari. Dengan ini aku bisa bergaul dengan gadis gadis lain tanpa harus bekerja!. Bermimpi menghindari pertempuran dan hidup dengan gadis gadis manis, Itsuki melangkah ke dunia lain. Tetapi kenyataan nya tidak semudah itu. Di serang oleh serangga raksasa, terjebak dalam pertengkaran guild, dan terjebak dengan budak ?!. Pada akhirnya, akankah itsuki dapat menjalani kehidupan yang ideal lambat?. Menggunakan keterampilan unik dan keterampilan manufaktur, kehidupan lambat dunia lain yang menarik dengan gadis gadis cantik dimulai sekarang.  ",
    release: "2019",
    genre: ["Action", "Adventure", "Ecchi", "Harem", "Isekai", "Shounen"],
    author: "Shige",
  ),
  Manga(
    title:
        "Kage no jitsuryokusha ni Naritakute! Master of Garden : Shichikage Retsuden",
    linkGambar:
        "https://i1.wp.com/komikstation.co/wp-content/uploads/2024/06/Kage-no-Jitsuryokusha-ni-Naritakute-Master-of-Garden-Shichikage-Retsuden.jpg",
    chapter: "9",
    status: "Ongoing",
    sinopsis:
        "Cid Kaguenou, seorang anak laki laki yang menikmati setting The Eminence in Shadow di dunia yang berbeda, memainkan peran keadilan dengan gadis-gadis bernama Seven Shadow(mereka sangat serius). Yang terkkuat dari ke tujuh (&Karakter Utama), sangat chuunibyou, dan komedi serius yang disalah pahami?",
    release: "2024",
    genre: [
      "Action",
      "Adventure",
      "Comedy",
      "Fantasy",
      "Harem",
      "Isekai",
      "Shounen",
    ],
    author: "AIZAWA daisuke ",
  ),
];
