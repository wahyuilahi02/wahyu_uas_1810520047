-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2020 at 08:26 AM
-- Server version: 5.7.28
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adiprata_kelas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `alamat`, `no_telp`, `email`, `username`, `password`, `pass`) VALUES
(1, 'Mas Eko', 'Jalan Mawar, Jawa Barat', '08571234567', 'masekoku1@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` longtext NOT NULL,
  `tgl_posting` date NOT NULL,
  `penerbit` varchar(10) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `judul`, `isi`, `tgl_posting`, `penerbit`, `status`) VALUES
(5, 'Kenakalan Remaja (Pencarian Jati Diri)', 'Remaja memang identik dengan nakal, tetapi tidaklah benar jika hanya remaja yang selalu di klaim nakal.\r\n\r\nDi Indonesia ini seperti negeri sandiwara, banyak ahli hukum mencederai hukum, banyak ahli ilmu mencederai ilmu, banyak wakil rakyat yang seharusnya mengemban amanah tetapi mereka malah melakukan KKN.\r\n\r\nApakah mereka remaja ? Tentu bukan, mereka sudah dewasa.', '2015-08-16', 'admin', 'aktif'),
(7, 'Teknologi Informasi Dan Komunikasi â€“ Sejarah, Pengertian, Manfaat, Dampak, Pengelompokan, Komponen, Pendidikan, Klasifikasi', 'Sejarah Tentang Teknologi Informasi dan Komunikasi\r\nPerkembangan peradaban manusia diiringi dengan perkembangan cara penyampaian informasi (yang selanjutnya dikenal dengan istilah Teknologi Informasi). Mulai dari gambar-gambar yang tak bermakna di dinding-dinding gua, peletakkan tonggak sejarah dalam bentuk prasasti sampai diperkenalkannya dunia arus informasi yang kemudian dikenal dengan nama INTERNET.\r\n\r\n\r\n \r\nInformasi yang disampaikan pun berkembang. Dari sekedar menggambarkan keadaan sampai taktik bertempur. Berikut ini adalah sejarah perkembangan teknologi informasi dan komunikasi manusia;\r\n\r\nMasa Pra-Sejarah (â€¦s/d 3000 SM)\r\nPada awalnya Teknologi Informasi yang dikembangkan manusia pada masa ini berfungsi sebagai sistem untuk pengenalan bentuk-bentuk yang mereka kenal, mereka menggambarkan informasi yang mereka dapatkan pada dinding-dinding gua, tentang berburu dan binatang buruannya.\r\n\r\nPada masa ini mereka mulai melakukan pengidentifikasian benda-benda yang ada disekitar lingkungan mereka tinggal dan mewakilinya dengan bentuk-bentuk yang kemudian mereka lukis pada dinding gua tempat mereka tinggal, karena kemampuan mereka dalam berbahasa hanya berkisar pada bentuk suara dengusan dan isyarat tangan sebagai bentuk awal komunikasi mereka pada masa ini.\r\n\r\nPerkembangan selanjutnya adalah diciptakan dan digunakannya alat-alat yang menghasilkan bunyi dan isyarat, seperti gendang, terompet yang terbuat dari tanduk binatang, isyarat asap sebagai alat pemberi peringatan terhadap bahaya.\r\n\r\nMasa Sejarah (3000 SM s/d 1400-an M)\r\nPada masa ini Teknologi Informasi belum menjadi teknologi masal seperti yang kita kenal sekarang ini, teknologi informasi masih digunakan oleh kalangan-kalangan terbatas saja, digunakan pada saat-saat khusus, dan mahal!\r\n\r\n3000 SM. Untuk yang pertama kali tulisan digunakan oleh bangsa sumeria dengan menggunakan simbol-simbol yang dibentuk dari pictograf sebagai huruf. Simbol atau huruf-huruf ini juga mempunyai bentuk bunyi yang berbeda(penyebutan), sehingga mampu menjadi kata, kalimat dan bahasa.\r\n\r\n2900 SM. Penggunakan Huruf Hierogliph pada bangsa Mesir Kuno. Hierogliph merupakan bahasa simbol dimana setiap ungkapan di wakili oleh simbol yang berbeda, yang ketifka digabungkan menjadi satu akan mempunyai cara pengucapan dan arti yang berbeda, bentuk tulisan dan bahasa hierogliph ini lebih maju dibandingkan dengan tulisan bangsa Sumeria.\r\n\r\n500 SM. Serat Papyrus digunakan sebagai kertas. Kertas yang terbuat dari serat pohon papyrus yang tumbuh disekitar sungai nil ini menjadi media menulis/media informasi yang lebih kuat dan fleksibel dibandingkan dengan lempengan tanah liat yang sebelumnya digunakan sebagai media informasi.\r\n\r\n105 M. Bangsa Cina menemukan Kertas. Kertas yang ditemukan oleh bangsa Cina pada masa ini adalah kertas yang kita kenal sekarang, kertas ini dibuat dari serat bambu yang dihaluskan, disaring,dicuci kemudian diratakan dan dikeringkan, penemuan ini juga memungkinkan sistem pencetakan yang dilakukan dengan menggunakan blok kayu yang ditoreh dan dilumuri oleh tinta atau yang kita kenal sekarang dengan sistem Cap.\r\n\r\nMasa Modern ( 1400-an M s/d sekarang )\r\nTahun 1455. Mesin Cetak yang menggunakan plat huruf yang tebuat dari besi yang bisa diganti-ganti dalam bingkai yang tebuat dari kayu dikembangkan untuk yang pertama kalinya oleh Johann Gutenberg.\r\n\r\nTahun 1830. Augusta Lady Byron Menulis program komputer yang pertama didunia berkerjasama dengan Charles Babbage menggunakan mesin Analytical-nya. Yang didesain mampu memasukan data, mengolah data dan menghasilkan bentuk keluaran dalam sebuah kartu. Mesin ini dikenal sebagai bentuk komputer digital yang pertama walaupun cara kerjanya lebih bersifat mekanis daripada bersifat digital, 94 tahun sebelum komputer digital pertama ENIAC I dibentuk.\r\n\r\nTahun 1837. Samuel Morse mengembangkan Telegraph dan bahasa kode Morse bersama Sir William Cook dan Sir Charles Wheatstone yang dikirim secara elektronik antara 2 tempat yang berjauhan melalui kabel yang menghubungkan kedua tempat tersebut. Pengiriman dan Penerimaan Informasi ini mampu dikirim dan diterima pada saat yang hampir bersamaan waktunya. Penemuan ini memungkinkan informasi dapat diterima dan dipergunakan secara luas oleh masyarakat tanpa dirintangi oleh jarak dan waktu.\r\n\r\nTahun 1861. Gambar bergerak yang peroyeksikan kedalam sebuah layar pertama kali di gunakan sebagai cikal bakal film sekarang.\r\nTahun 1876. Melvyl Dewey mengembangkan sitem penulisan Desimal.\r\nTahun 1877.\r\nAlexander Graham Bell menciptakan dan mengembangkan Telepon yang dipergunakan pertama kali secara umum.\r\nFotografi dengan kecepatan tinggi ditemukan oleh Edweard Maybridge.\r\nTahun 1899. Dipergunakan sistem penyimpanan dalam Tape (pita) Magnetis yang pertama.\r\nTahun 1923. Zvorkyn menciptakan tabung TV yang pertama.\r\nTahun 1940. Dimulainya pengembangan Ilmu Pengetahuan dalam bidang Informasi pada masa Perang Dunia 2 yang dipergunakan untuk kepentingan pengiriman dan penerimaan dokumen-dokumen militer yang disimpan dalam bentuk magnetic tape.\r\nTahun 1945. Vannevar Bush mengembangkan sistem pengkodean menggunakan Hypertext.\r\nTahun 1946. Komputer digital pertama didunia ENIAC I dikembangkan.\r\nTahun 1948. Para peneliti di Bell Telephone mengembangkan Transistor.\r\nTahun 195. Jean Hoerni mengembangkan transistor Planar. Teknologi ini memungkinkan pengembangan jutaan bahkan milyaran transistor dimasukan kedalam sebuah keping kecil kristal silikon.\r\nâ€“ USSR (Rusia pada saat itu) meluncurkan sputnik sebagai satelit bumi buatan yang pertama yang bertugas sebagai mata-mata. Sebagai balasannya Amerika membentuk Advance Research Projects Agency (ARPA) dibawah kewenangan Departemen Pertahanan Amerika untuk mengembangkan ilmu Pengetahuan dan Teknologi Informasi dalam bidang Militer.\r\n\r\nTahun 1962. Rand Paul Barand, dari perusahaan RAND, ditugaskan untuk mengembangkan suatu sistem jaringan desentralisasi yang mampu mengendalikan sistem pemboman dan peluncuran peluru kendali dalam perang Nuklir.\r\nTahun 1969. Sistem jaringan yang pertama dibentuk dengan menghubungkan 4 nodes (titik), antara University of California, SRI (Stanford), University California of Santa Barbara, dan University of Utah.dengan kekuatan 50Kbps.\r\nTahun 1972. Ray Tomlinson menciptakan program e-mail yang pertama\r\nTahun 1973 â€“ 1990. Istilah INTERNET diperkenalkan dalam sebuah paper mengenai TCP/IP kemudian dilakukan pengembangan sebuah protokol jaringan yang kemudian difkenal dengan nama TCP/IP yang dikembangkan oleh grup dari DARPA, 1981 National Science Foundation mengembangkan Backbone yang disebut CSNET dengan kapasitas 56 Kbps untuk setiap institusi dalam pemerintahan.\r\nkemudian pada tahun 1986 IETF mengembangkan sebuah Server yang berfungsi sebagai alat koordinasi diantara; DARPA, ARPANET, DDN dan Internet Gateway.\r\n\r\nTahun 1991- Sekarang. Sistem bisnis dalam bidang IT pertama kali terjadi ketika CERN dalam menanggulangi biaya operasionalnya memungut bayaran dari para anggotanya.\r\n1992 pembentukan komunitas Internet, dan diperkenalkannya istilah World Wide Web oleh CERN. 1993, NSF membentuk InterNIC untuk menyediakan jasa pelayanan Internet menyangkut direktori dan penyimpanan data serta database (oleh AT&T), Jasa Registrasi (oleh Network Solution Inc,), dan jasa Informasi (oleh General Atomics/CERFnet),1994 pertumbuhan Internet melaju dengan sangat cepat dan mulai merambah kedalam segala segi kehidupan manusia dan menjadi bagian yang tidak dapat dipisahkan dari manusia.\r\n\r\n1995, Perusahaan umum mulai diperkenankan menjadi provider dengan membeli jaringan di Backbone, langkah ini memulai pengembangan Teknologi Informasi khususnya Internet dan penelitian-penelitian untuk mengembangkan sistem dan alat yang lebih canggih.\r\n\r\nBaca Juga Artikel Yang Mungkin Berhubungan : 9 Pengertian Informasi Menurut Para Ahli\r\n\r\nPengertian Teknologi Informasi Dan Komunikasi\r\nTeknologi informasi dan komunikasi mencakup dua aspek, yaitu teknologi informasi dan teknologi komunikasi. Teknologi informasi, mencakup segala hal yang berkaitan dengan proses, penggunaan sebagai alat bantu, manipulasi, dan pengelolaan informasi. Sedangkan, teknologi komunikasi mencakup segala hal yang berkaitan dengan penggunaan alat bantu untuk memproses dan mentransfer data dari perangkat yang satu ke lainnya.\r\n\r\nMaka, teknologi informasi dan teknologi komunikasi adalah suatu kesatuan yang tidak terpisahkan yang mengandung pengertian luas tentang segala kegiatan yang terkait dengan pemrosesan, manipulasi, pengelolaan dan transfer/pemindahan informasi antar media\r\n\r\n  Menurut Eric Deeson, Harper Collins Publishers, Dictionary of Information Technology, Glasgow,UK,1991\r\nâ€œInformation Technology (IT) the handling of information by electric and electronic (and microelectronic) means.â€Here handling includes transfer. Processing, storage and access, IT special concern being the use of hardware and software for these tasks for the benefit of individual people and society as a wholeâ€\r\n\r\nDari penjelasan di atas dapat diartikan bahwa teknologi informasi adalah kebutuhan manusia didalam mengambil dan memindahkan , mengolah dan memproses informasi dalam konteks sosial yang menguntungkan diri sendiri dan masyarakat secara keseluruhan.\r\n\r\nMenurut Puskur Diknas Indonesia, Teknologi Informasi dan Komunikasi (TIK)    mencakup dua aspek, yaitu Teknologi Informasi dan Teknologi Komunikasi.\r\nTeknologi Informasi adalah meliputi segala hal yang berkaitan dengan proses,  penggunaan sebagai alat bantu, manipulasi, dan pengelolaan informasi.\r\n Teknologi Komunikasi adalah segala hal yang berkaitan dengan penggunaan alat bantu untuk memproses dan mentransfer data dari perangkat yang satu ke lainnya.\r\nDari penjelasan diatas dapat disimpulkan bahwa      Teknologi Informasi dan Teknologi Komunikasi adalah suatu padanan yang tidak terpisahkan yang mengandung pengertian luas tentang  segala kegiatan  yang terkait dengan pemrosesan, manipulasi, pengelolaan, dan transfer/pemindahan informasi antar media\r\n\r\nMenurut Susanto ( 2002 ) informasi merupakan hasil dari pengolahan data namun tidak semua hasil dari pengolahan tersebut dapat menjadi informasi.\r\nJadi pengertian TIK adalah sebuah media atau alat bantu yang digunakan untuk transfer data baik itu untuk memperoleh suatu data / informasi maupun memberikan informasi kepada orang lain serta dapat digunakan untuk alat berkomunikasi baik satu arah ataupun dua arah.\r\n\r\nTeknologi Informasi dan Komunikasi merupakan payung besar triminologi yang mencakup semua keperluan teknis untuk memperoses dan menyampaikan sebuah informasi, TIK memiliki dua aspek, yaitu teknologi informasi dan teknologi komunikasi.\r\n\r\nTeknologi informasi menliputi segala hal yang berkaitan dengan proses, pemakian sebagai alat bantu, pengelolaan informasi, serta manipulasi informasi. Teknologi komunikasi merupakan semua hal yang berkaitan dengan pemakaian alat bantu untuk memperoses serta mentransfer dara dari perangkat satu ke perangkat lainnya.\r\n\r\nOleh sebab itu, teknologi informasi dan komunikasi merupakan dua buah konsep yang terpisahkan, maka Teknologi Informasi dan Teknologi Komunikasi memiliki perngertian luas, yaitu segala jenis kegiatan yang terkait dengan pemrosesan, pengelolaan, manipulasi, serta pemindahan informasi antar media.\r\n\r\nIstilah TIK ada setelah adanya perpaduan antara teknologi komputer (perangkat keras ataupun lunak) dengan teknologi komunikasi pada pertengahan abad ke-20. Perpaduan teknologi tersebut berkembang sangat pesat melampaui bidang teknologi lainnya. Sampai awal abad ke-21, TIK masih terus mengalami berbagai perubahan dan belum terlihat titik jenuhnya.\r\n\r\nDampak positif dan negatif pemanfaatan teknologi informasi dan telekomunikasi antara lain:\r\n\r\nA. Manfaat Teknologi Informasi dan Komunikasi antara lain :\r\nInformasi yang dibutuhkan akan semakin cepat dan mudah di akses untuk kepentingan pendidikan\r\nKonsultasi dengan pakar, konsultasi dangan para ahli dibidangnya dapat dilakukan dengan mudah walaupun ahli tersebut berada ditempat yang sangat jauh.\r\nPerpustakaan online, perpusatakaan online adalah perpustakaan dalam bentuk digital.\r\nDiskusi online. Diskusi online adalah diskusi yang dilakukan melalui internet.\r\nInovasi dalam pembelajaran semakin berkembang dengan adanya inovasi e-learning yang semakin memudahkan proses pendidikan.\r\nKemajuan TIK juga akan memungkinkan berkembangnya kelas virtualatau kelas yang berbasis teleconference yang tidak mengharuskan sang pendidik dan peserta didik berada dalam satu ruangan.\r\nSistem administrasi pada sebuah lembaga pendidikan akan semakin mudah dan lancar karena penerapan sistem TIK.\r\nBaca Juga Artikel Yang Mungkin Berhubungan : âˆš 45 Pengertian Akuntansi Menurut Para Ahli ( Fungsi, Jenis Dan Tujuan )\r\n\r\nB. Dampak Negatif Teknologi Informasi dan Komunikasi\r\nTeknologi informasi berkembang sangat cepat seiring dengan perkembangan zaman. Kehidupan manusia tidak luput dari penggunaan teknologi informasi dan komunikasi.\r\n\r\nDampak perkembangan teknologi sangat signifikan, masyarakat sudah tergantung dengan teknologi informasi dan komunikasi. Hal ini menyebabkan mobilitas informasi sangat cepat, kejadian dari berbagai belahan dunia bisa kita nikmati secara langsung.\r\n\r\nTapi di sisi lain perkembangan teknologi membawa dampak yang negative bagi masyarakat, utamanya bagi perkembangan generasi muda. Dengan teknologi seperti layanan internet sangat banyak konten-konten yang tidak sepantasnya dilihat dan diakses oleh anak-anak di bawah umur. Hal ini mengakibatkan perkembangan mental dan psikologi anak-anak kita menjadi terganggu dan tidak sedikit anak-anak kita yang rusak karena teknologi.\r\n\r\nTeknologi bagi beberapa kelompok merupakan sebuah lahan pasar yang sangat ideal untuk meraup keuntungan yang banyak.\r\n\r\nDampak Positif Teknologi Informasi dan Komunikasi :\r\nInternet sebagai media komunikasi, merupakan fungsi internet yang paling banyak digunakan dimana setiap pengguna internet dapat berkomunikasi dengan pengguna lainnya dari seluruh dunia dari anak-anak hingga manula.\r\nMedia pertukaran data, dengan menggunakan email, newsgroup, ftp dan www (world wide web â€“ jaringan situs-situs web) para pengguna internet di seluruh dunia dapat saling bertukar informasi dengan cepat dan murah.\r\nMedia untuk mencari informasi, perkembangan internet yang pesat.\r\nKemudahan memperoleh informasi yang ada di internet sehingga manusia tahu apa saja yang terjadi.\r\nBisa digunakan sebagai lahan informasi untuk bidang pendidikan, kebudayaan, dan lain-lain.\r\nKemudahan bertransaksi dan berbisnis dalam bidang perdagangan sehingga tidak perlu pergi menuju ke tempat penawaran/penjualan.\r\nDengan internet, kita dapat memperbaharui informasi yang setiap detiknya dapat di update. dampak teknologi informasi, dampak negatif teknologi informasi, dampak positif teknologi informasi, dampak teknologi informasi dan komunikasi, pengaruh teknologi informasi\r\nDampak Negatif Teknologi Informasi da Komunikasi\r\nMelalui media komputer. Begitu dahsyatnya kelebihan, kemudahan, dan kesenangan yang ditawarkan oleh sarana-sarana dalam komputer dan internet, ternyata dapat menimbulkan berbagai dampak negatif dalam penggunaan komputer. Berikut adalah uraiannya:\r\n\r\nketergantungan\r\nMedia komputer memiliki kualitas atraktif yang dapat merespon segala stimulus yang diberikan oleh penggunanya. Terlalu atraktifnya, membuat penggunanya seakan-akan menemukan dunianya sendiri yang membuatnya terasa nyaman dan tidak mau melepaskannya. kita bisa menggunakan komputer sebagai pelepas stress dengan bermain gamesyang ada.\r\n\r\nPornografi\r\nAnggapan yang mengatakan bahwa internet identik dengan pornografi, memang tidak salah. Dengan kemampuan penyampaian informasi yang dimiliki internet, pornografi pun merajalela. Begitu banyak situs-situs pornografi yang ada di internet, meresahkan banyak pihak terutama kalangan orang tua yang khawatir anak-anaknya akan mengonsumsi hal-hal yang bersifat porno. Di internet terdapat gambar-gambar pornografi yang bisa mengakibatkan dorongan kepada seseorang untuk bertindak kriminal. Ironisnya, ada situs-situs yang memang menjadikan anak-anak sebagai target khalayaknya. Mereka berusaha untuk membuat situs yang kemungkinan besar memiliki keterkaitan dengan anak-anak dan sering mereka jelajahi.\r\n\r\nAntisocial Behavior.\r\nSalah satu dampak yang dapat ditimbulkan dari penyalahgunaan komputer adalah antisocial behavior. Dimana pengguna komputer tersebut tidak lagi peduli kepada lingkungan sosialnya dan cenderung mengutamakan komputer. Selain itu, pengguna komputer tersebut tidak peduli lagi apa yang terjadi disekitarnya, satu-satunya yang dapat menarik perhatiannya hanyalah komputer saja.\r\n\r\nOrang akan menjadi lebih jarang berinteraksi dengan lingkungan di sekitarnya, sehingga kemampuan interpersonal dan emosionalnya tidak berkembang secara optimal. Lama kelamaan, seseorang akan sulit menjalin komunikasi dan membangun relasi dengan orang-orang disekitarnya. Bila hal tersebut tidak segera ditanggulangi akan menumbulkan dampak yang sangat buruk, yang dimana manusia lama kelamaan akan sangat individualis dan tidak akan ada lagi interaksi ataupun sosialisasi.\r\n\r\nBaca Juga Artikel Yang Mungkin Berhubungan : Dinamika Penduduk : Pengertian, Dampak, Faktor Dan Solusinya Lengkap\r\n\r\nTeknologi Informasi\r\nTeknologi Informasi Merupakan teknologi yang di dalamnya berkaitan dengan proses, penggunaan alat bantu, memanipulasi, serta dalam pengelolaan informasi.\r\n\r\nTeknologi komputer adalah teknologi yang berhubungan dengan komputer, termasuk peralatan yang berhubungan dengan komputer, seperti printer, pembaca sidik jari, danh bahkan CR-ROM. Komputer adalah mesin serba guna yang dapat dikontrol dan diprogram, digunakan untuk mengolah data menjad iinformasi. Program adalah deretan instruksi yang digunakan untuk mengendalikan komputer hingga komputer dapat melakukan tugasnya sesuai yang dikehendaki oleh pembuat program. Data adalah bahan mentah bagi komputer yang dapat berupa angka atau huruf atau simbol, sedangkan informasi adalah bentuk data yanag telah diolah sehingga dapat menjadi bahan yang berguna untuk pengambilan keputusan.\r\n\r\nTeknologi Komunikasi\r\nTeknologi komunikasi atau biasa juga disebut teknologi komunikasi adalah teknologi yang berhubungan dengan komunikasi jarak jauh. Termasuk dalam kategori teknologi ini adalah telepon, radio dan televisi.\r\n\r\nTeknologi Komunikasi Merupakan teknologi yang berkaitan dengan penggunaan alat bantu dalam mengirimkan dan memproses data yang berasal dari perangkat satu ke perangkat lain.\r\n\r\nCara Penyampaian Informasi dapat di sampaikan dengan 3 cara yang diantaranya\r\n\r\nNatural Penyampaian dengan natural atau Manusia merupakan penyampaian informasi de;gnanmenggunakan tangan Manusia. Seperti contohnya pada zaman dahulu yang menggunakan gambar-gambar atau goresan yang ada di dinding dan bebatuan goa.\r\nMekanis Penyampaian dengan mekanis merupakan penyampaian informasi yang di lakukan de;gan memakai peralatan dengan bentuk mekanik yang di gerakan Manusia.\r\nElektronik Penyampaian dengan elektonik merupakan penyampaian informasi dengan menggunakan peralatan elektronik.\r\nPengelompokan Teknologi Informasi\r\nTelah diketahui bahwa teknologi informasi mencakup teknologi komputer dan teknologi komunikasi. Lebih rinci, teknologi infromasi dapat dikelompokan menjadi 6 teknologi, yakni teknologi komunikasi, teknologi masukan, teknologi perangkat lunak, teknologi penyimpanan, dan teknologi mesin pemroses.\r\n\r\nTeknologi Masukan\r\nTeknologi masukan (input technology) adalah teknologi yang berhubungan dengan peralatan untuk memasukkan data ke dalam sistem komputer. Piranti masukan yang lazim dijumpai dalam sistem komputer berupa keyboard dan mouse.\r\n\r\nTeknologi Mesin Pemroses\r\nMesin Pemroses (processing machine) lebih dikenal dengan sebutan CPU (Central Processing Unit), mikroprosesor, atau prosesor. Contoh prosesor yang terkeanl saat ini, antara lain adalah Pentium dan PowerPC.\r\n\r\nTeknologi Penyimpanan\r\nTeknologi penyimpanan dibedakan menjadi dua kelompok, yaitu memori internal dan penyimpanan eksternal. Memori internal (biasa juga disebut main memory atau memori utama) berfungsi sebagai pengikat sementara baik bagi data, program, maupun informasi ketika proses pengolahannya dilaksanakan oleh CPU. Dua contoh memori internal yaitu ROM dan RAM. ROM (Read Only Memory) adalah memori yang hanya bisa dibaca, sedangkan RAM (Read Access Memory) adalah memori yang isinya bisa diperbaharui.\r\n\r\nPenyimpanan eksternal (external storage) dikenal juga dengan sebutan penyimpanan sekunder. Penyimpanan external adalah segala piranti yang berfungsi untuk menyimpan data secara permanen. Pengertian permanen disini berarti bahwa data yang terdapat pada penyimpanan akan tetap terpelihara dengan baik sekalipun komputer sudah dalam keadaan mati (tidak mendapat aliran listrik). Harddisk dan disket juga flashdisk adalah contoh penyimpanan eksternal.\r\n\r\nTeknologi Keluaran\r\nTeknologi keluaran (output technology) adalah teknologi yang berhubungan dengan segala piranti yang berfungsi untuk menyajikan informasi hasil pengolahan sistem. Layar dan monitor dan printer merupakan piranti yang biasa digunakan sebagai piranti keluaran.\r\n\r\nTeknologi Perangkat Lunak\r\nPerangkat lunak (software) atau dikenal juga dengan sebutan program. Tentu saja untuk mengerjakan tugas komputer, diperlukan perangkat lunak sendiri. Sebagai contoh Microsoft Word merupakancontoh perangkat lunak pengolah kata yang berguna untuk membuat dokumen, sedangkan Adobe Photoshop adalah perangkat lunak yang berguna untuk mengolah gambar.\r\n\r\nBaca Juga Artikel Yang Mungkin Berhubungan : âˆš Pengertian Kartografi Menurut Pendapat Para Ahli Serta Fungsi, Jenis Dan Tujuannya\r\n\r\nKomponen Sistem Teknologi Informasi\r\nYang dimaksud dengan sistem teknologi informasi adalah sistem yang terbentuk sehubungan dengan penggunaan teknologi informasi. Suatu sistem teknologi informasi pada dasarnya tidak hanya mencakup hal-hal yang bersifat fisik, seperti komputer dan printer, tetapi juga mencakup hal-hal yang tidak terlihat secara fisik, yaitu piranti lunak dan yang lebih penting lagi adalah orang. Dengan kata lain, komponen utama sistem teknologi informasi adalah berupa :\r\n\r\nperangkat keras (hardware)\r\nperangkat lunak (software)\r\norang (brainware)\r\nKlasifikasi Sistem Teknologi Informasi\r\nSistem teknologi informasi dapat dibedakan dengan berbagai cara pengklasifikasian. Misalnya, menurut fungsi sistem (embedded IT System, dedicated IT system, dan general purpose IT system), menurut departemen\r\n\r\nAtau perusahaan bisnis (sistem informasi akuntansi, sistem informasi pemasaran, sistem informasi produksi, dll), menurut dukungan terhadap level manajemen dalam perusahana (sistem pemrosesan transaksi, sistem pendukung keputusan, san sistem informasi eksekutif), menurut ukuran dan menurut cara melayani permintaan (klien-server).\r\n\r\nTeknologi Informasi Komunikasi Pendidikan Indonesia\r\nIndonesia pernah memakai istilah telematika sebagai arti yang hampir sama dangan TIK yang bisa kita kenal saat ini. Encarta Dictionary mendefinisikan telematika sebagai telekomunikasi + informatika (telecommunication + informatics) meski sebelumnya kata tersebut memiliki makna science of data transmission.\r\n\r\nPengolahan informasi melalui jaringan telekomunikasi membuka banyak peluang sebagai pemanfaatan di berbagai bidang kehidupan manusia, dan salah sarunya bidang pendidikan. Ide dipakai sebagai mesin-belajar, animasi proses-proses yang rumit didefinisikan dengan sangat menarik untuk praktisi pembelajaran, serta simulasi proses yang rumit.\r\n\r\nPemanfaatan TIK dalam pembelajaran di Indonesia telah mempunyai sejarah yang sangat panjang. Inisiatif menyelengarakan siaran radio pendidikan dan juga televisi dendidikan merupakan usaha untuk melakukan pemerataan informasi ke satuan-satuan pendidikan yang besar di seluruh Nusantara.\r\n\r\nHal ini merupakan satu perwujudan dari sebuah kesadaran untuk memaksinalkan pendayagunakan dalam membuat proses pembelajaran masyarakat. Kelemahan yang paling utama siaran radio atapun televisi pendidikan merupakan tidak adanya feedback yang seketika. Sebuah siaran memiliki manfaat yang utama dari narasamber atau fasilitator kepada pembelajaran.\r\n\r\nBaca Juga Artikel Yang Mungkin Berhubungan : Pengertian, Fungsi Dan Macam-Macam Satelit Beserta Contohnya Terlengkap\r\n\r\nBuku elektronik\r\ne-book atau Buku elektronik merupakan salah satu teknologi yang memiliki manfaat seperti komputer untuk menayangkan informasi multimedia dalam bentuk yang dinamis dan ringkas. Suatu e-book dapat bisa diintegrasikan tayangan berupa suara, gambar, grafik, annimasi ataupun movie sehingga apa yang disajikan dapat lebih kaya daripada dengan buku konvensional.\r\n\r\nE-learning\r\nBerbagai pengertian bisa kita temukan untuk e-learning. Victoria L. Tinio, misal, menyatakan bahwa e-learning seperti pembelajaran pada semua tingkatan, formal ataupun nonformal, yang memakai sebuah jaringan kompute (internet ataupun ekstranet) untuk menghantarkan bahan ajar, fasilitas ataupun interaksi. Pembelajaran yang sebagian kegiatannya berlangsung dengan bantuan jaringan internet sering disebut juga sebagai online learinng.\r\n\r\nPengertian yang lebih luas di nyatakan pada working paper SEAMOLEC, yaitu e-learning merupakan pembelajaran melalui jasa elektronik. Walaupun banyak pengertian tetapi pada dasarnya disetujui bahwa e-learning merupakan sebuah pembelajaran dengan memanfaatkan teknologi elektronik sebagai sarana penyajian dan distribusi informasi.\r\n\r\nInternet-based learning ataupun web-based learning dalam bentuk yang paling mudah merupakan website yang dimanfaatkan sebagai sajian materi pembelajaran. Cara ini memungkinkan pembelajar dapat mengakses sumber belajar yang disediakan oleh fasilitator ataupun narasumber kapanpun akan dikehendaki. Jika diperlukan dapat pula disediakan mailing list khusus sebagai situs pembelajaran yang memiliki fungsi untuk form diskusi.\r\n\r\nFasilitas e-learning disediakan oleh perangkat lunak yang secara khusus disebut perangkat lunak pengelola pembelajaran. atau LMS (learning menagement system).\r\n\r\nFasilitas yang disediakan meliputi pengelolaan perserta atau siswa didik, proses pembelajaran, materi pembelajaran, dan juga evaluasi pembelajaran serta komunikasi pembelajaran dengan fasilitatornya.\r\n\r\nFasilitas ini dapat mengungkinkan suatu kegiatan dikelola tanpa adanya tatap muka langung diantara pihak yang terlibat (administrator, fasilitator, peserta didik atau pembelajar).  â€˜Kehadiranâ€™ pihak-pihak yang terlibat diwakili oleh e-mail, kanal chatting, atau melalui video conference.', '2020-03-25', 'admin', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_file_materi`
--

CREATE TABLE `tb_file_materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `id_kelas` int(4) NOT NULL,
  `id_mapel` int(4) NOT NULL,
  `nama_file` varchar(250) NOT NULL,
  `tgl_posting` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `hits` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_file_materi`
--

INSERT INTO `tb_file_materi` (`id_materi`, `judul`, `id_kelas`, `id_mapel`, `nama_file`, `tgl_posting`, `pembuat`, `hits`) VALUES
(3, 'Modul Latihan', 3, 2, 'Cetak Soal Tryout P1.pdf', '2015-08-15', 'admin', 0),
(4, 'Modul 1', 1, 1, 'kumpulan_soal_20152.pdf', '2015-08-15', '1', 7),
(5, 'Modul 2', 1, 1, '2072-P1-SPK-Rekayasa Perangkat Lunak.doc', '2015-08-15', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jawaban`
--

CREATE TABLE `tb_jawaban` (
  `id` int(11) NOT NULL,
  `id_tq` int(4) NOT NULL,
  `id_soal` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id`, `id_tq`, `id_soal`, `id_siswa`, `jawaban`) VALUES
(49, 1, 4, 8, 'Gak tau'),
(50, 1, 2, 8, 'Gak tau'),
(54, 2, 6, 2, 'Bengawan Solo'),
(55, 2, 5, 2, 'Jusuf Kalla'),
(56, 2, 1, 2, 'Semarang'),
(57, 1, 2, 1, 'mejikuhibiniu'),
(58, 1, 4, 1, 'Ir. Soekarno');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `wali_kelas` int(5) NOT NULL,
  `ketua_kelas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `ruang`, `wali_kelas`, `ketua_kelas`) VALUES
(5, 'RPL-1', 'RUANG A', 15, 0),
(6, 'RPL-2', 'RUANG B', 0, 0),
(7, 'RPL-3', 'RUANG C', 0, 0),
(8, 'RPL-4', 'RUANG D', 0, 0),
(9, 'RPL-5', 'RUANG E', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas_ajar`
--

CREATE TABLE `tb_kelas_ajar` (
  `id` int(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas_ajar`
--

INSERT INTO `tb_kelas_ajar` (`id`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
(1, 1, 1, 'Halo'),
(2, 1, 8, 'aaa'),
(4, 3, 8, 'bbb'),
(5, 2, 1, 'Halo');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `mapel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id`, `kode_mapel`, `mapel`) VALUES
(5, 'A1', 'TIK');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel_ajar`
--

CREATE TABLE `tb_mapel_ajar` (
  `id` int(11) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel_ajar`
--

INSERT INTO `tb_mapel_ajar` (`id`, `id_mapel`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
(6, 1, 2, 1, 'aaa'),
(7, 1, 1, 1, 'Kelas baik'),
(9, 3, 2, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_essay`
--

CREATE TABLE `tb_nilai_essay` (
  `id` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_essay`
--

INSERT INTO `tb_nilai_essay` (`id`, `id_tq`, `id_siswa`, `nilai`) VALUES
(4, 2, 2, 90),
(11, 1, 1, 95);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_pilgan`
--

CREATE TABLE `tb_nilai_pilgan` (
  `id` int(11) NOT NULL,
  `id_tq` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `tidak_dikerjakan` int(4) NOT NULL,
  `presentase` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_pilgan`
--

INSERT INTO `tb_nilai_pilgan` (`id`, `id_tq`, `id_siswa`, `benar`, `salah`, `tidak_dikerjakan`, `presentase`) VALUES
(25, 1, 8, 2, 3, 0, 40),
(27, 2, 2, 2, 0, 0, 100),
(30, 5, 1, 2, 0, 0, 100),
(31, 1, 1, 5, 0, 0, 100),
(33, 28, 10, 0, 0, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengajar`
--

CREATE TABLE `tb_pengajar` (
  `id_pengajar` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `web` varchar(60) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengajar`
--

INSERT INTO `tb_pengajar` (`id_pengajar`, `nip`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_telp`, `email`, `alamat`, `jabatan`, `foto`, `web`, `username`, `password`, `pass`, `status`) VALUES
(15, '200201', 'Ahmad Budi', 'Surabaya', '1983-05-13', 'L', 'Islam', '097112171262', 'ahmadbudi@ekonyontek23.com', 'jalan Pisang', 'Guru Matematika', 'pokekid.jpg', '', 'ahmad', '81dc9bdb52d04dc20036dbd8313ed055', '1234', 'aktif'),
(16, '200202', 'Tina Agustina', 'Malang', '1983-03-29', 'P', 'Islam', '097112171263', 'tinaagustina@ekonyontek23.com', 'Jalan Durian', 'Guru Pemograman Dasa', 'bu tina.jpg', '', 'tina', '81dc9bdb52d04dc20036dbd8313ed055', '1234', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `thn_masuk` int(5) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `nama_ayah`, `nama_ibu`, `no_telp`, `email`, `alamat`, `id_kelas`, `thn_masuk`, `foto`, `username`, `password`, `pass`, `status`) VALUES
(1, '12065', 'Mohammad', 'Tuban', '1996-07-06', 'L', 'Islam', 'Ahmad', 'Wiwik', '085786447xxx', 'mohnurfawaiq@yahoo.com', 'Pati', '1', 2015, 'lucu.jpg', 'moh', '94e510ecc1b1d7a405c0e7aa18db792b', 'moh', 'aktif'),
(2, '1212', 'Rifaatul Firdaus', 'Pati', '1997-08-20', 'P', 'Islam', 'Rifa\'i', 'Basyiroh', '63767343', 'sjdhsjdh@sdjsd.co', 'Pati, Jawa Tengah', '2', 2014, 'lucu2.jpg', 'firda', '5ed291923179b73cbc6ef968b35361ff', 'firda', 'aktif'),
(7, '776', 'Didik', 'Rembang', '2015-08-01', 'L', 'Konghucu', 'Kamto', 'Rudah', '', '', 'Punjulharjo, Rembang', '3', 2015, 'anonim.png', 'didik', '2ff462bc49e322708a48d3d5e3ca4bab', 'didik', 'aktif'),
(8, '65656', 'Jajang', 'Majalengka', '1996-02-02', 'L', 'Islam', 'Gak Tau', 'Gak Tau', '085454583', '', 'Majalengka', '1', 2015, 'anonim.png', 'jajang', 'b56b57039c86f8626ece5a1a35f86175', 'jajang', 'aktif'),
(11, '20041122', 'Girsang Cristhoper', 'Bekasi', '2002-10-27', 'L', 'Kristen', 'Munar', 'Ranti', '', 'gtarigan811@gmail.com', 'jalan Kapuas', '8', 2015, 'belok1.jpg', 'girsang', '81dc9bdb52d04dc20036dbd8313ed055', '1234', 'aktif'),
(12, '20041121', 'Mas Eko', 'Jakarta', '2001-07-30', 'L', 'Islam', 'Anto', 'Marta', '012345677', 'maseko@mail.com', 'Jalan Bunga Asoka', '5', 2015, 'squidi tampan.jpg', 'maseko', '81dc9bdb52d04dc20036dbd8313ed055', '1234', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal_essay`
--

CREATE TABLE `tb_soal_essay` (
  `id_essay` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_soal_essay`
--

INSERT INTO `tb_soal_essay` (`id_essay`, `id_tq`, `pertanyaan`, `gambar`, `tgl_buat`) VALUES
(1, 2, 'Apa nama ibukota Provinsi Jawa Tengah ?', '11330004_917546658327011_8090069200033803302_n.jpg', '2015-08-05'),
(2, 1, 'Apa warna pelangi ?', '11330004_917546658327011_8090069200033803302_n.jpg', '2015-08-09'),
(4, 1, 'Siapa presiden pertama Indonesia ?', '', '2015-08-09'),
(5, 2, 'Siapa wakil presiden Indonesia ?', '', '2015-08-11'),
(6, 2, 'Apa sungai terpanjang di jawa ?', '', '2015-08-11'),
(7, 3, 'What is your hobby ?', '', '2015-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal_pilgan`
--

CREATE TABLE `tb_soal_pilgan` (
  `id_pilgan` int(11) NOT NULL,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `pil_a` text NOT NULL,
  `pil_b` text NOT NULL,
  `pil_c` text NOT NULL,
  `pil_d` text NOT NULL,
  `pil_e` text NOT NULL,
  `kunci` varchar(2) NOT NULL,
  `tgl_buat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_soal_pilgan`
--

INSERT INTO `tb_soal_pilgan` (`id_pilgan`, `id_tq`, `pertanyaan`, `gambar`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `tgl_buat`) VALUES
(2, 1, 'Apa huruf pertama dalam alphabet ?', 'lucu.jpg', 'H', 'I', 'O', 'Z', 'A', 'E', '2015-08-05'),
(3, 1, 'Apa nama ibukota negara Indonesia ?', '', 'Pati', 'Semarang', 'Surabaya', 'Jakarta', 'Medan', 'D', '2015-08-05'),
(4, 1, 'Apa arti sinomin ?', '', 'Perlawanan', 'Persamaan', 'Perbedaan', 'Pertengkaran', 'Persatuan', 'B', '2015-08-06'),
(5, 2, 'Tanggal berapa Indonesia merdeka ?', '', '17 Agustus 1965', '17 September 1945', '18 Agustus 1945', '17 Agustus 1995', '17 Agustus 1945', 'E', '2015-08-09'),
(8, 1, 'Apa arti antonim ?', '', 'Perlawanan', 'Persamaan', 'Kemiripan', 'Pertengkaran', 'Kesejahteraan', 'A', '2015-08-09'),
(9, 1, 'Siapa presiden ke-7 Negara Indonesia ?', '', 'Susiso Bambang Yudhoyono', 'Soekarno', 'Soeharto', 'Megawati Soekarno Putri', 'Joko Widodo', 'E', '2015-08-09'),
(10, 2, 'Apa ibukota Provinsi Jawa Timur ?', '', 'Surabaya', 'Semarang', 'Bandung', 'Pati', 'Rembang', 'A', '2015-08-11'),
(11, 5, 'Berapakah hasil 1 + 1 ?', '', '6', '4', '3', '2', '8', 'D', '2015-08-12'),
(12, 5, 'Berapakah hasil 8 x 7 ?', '', '24', '54', '67', '83', '56', 'E', '2015-08-12'),
(13, 3, 'Are you tired ?', '', 'Yes, I am', 'Apa sih', 'No, I am handsome', 'What ?', 'Ok', 'A', '2015-08-14'),
(14, 3, 'What is the meaning of \"Cruel\" ?', '', 'Rendah hati', 'Pendiam', 'Sombong', 'Kejam', 'Ganteng', 'D', '2015-08-14'),
(59, 28, 'Fungsi utama program Microsoft Excel adalah aplikasi yang.', '', 'pengolah kata', 'Kembangkan angka', 'Kelola dokumen', 'menyampaikan', 'Temukan informasi', 'B', '2020-03-25'),
(60, 29, 'Fungsi utama program Microsoft Excel adalah aplikasi yang.', '', 'pengolah kata', 'Kembangkan angka', 'Kelola dokumen', 'menyampaikan', 'Temukan informasi', 'B', '2020-03-25'),
(61, 30, 'Fungsi utama program Microsoft Excel adalah aplikasi yang.', '', 'pengolah kata', 'Kembangkan angka', 'Kelola dokumen', 'menyampaikan', 'Temukan informasi', 'B', '2020-03-25'),
(62, 31, 'Fungsi utama program Microsoft Excel adalah aplikasi yang.', '', 'pengolah kata', 'Kembangkan angka', 'Kelola dokumen', 'menyampaikan', 'Temukan informasi', 'B', '2020-03-25'),
(63, 32, 'Fungsi utama program Microsoft Excel adalah aplikasi yang.', '', 'pengolah kata', 'Kembangkan angka', 'Kelola dokumen', 'menyampaikan', 'Temukan informasi', 'B', '2020-03-25'),
(65, 28, 'Tautan berikut digunakan untuk memformat teks sehingga italic.', '', 'Ctrl + B', 'Ctrl + I', 'Ctrl + U', 'Ctrl + S', 'Ctrl + O', 'B', '2020-03-25'),
(66, 29, 'Tautan berikut digunakan untuk memformat teks sehingga italic.', '', 'Ctrl + B', 'Ctrl + I', 'Ctrl + U', 'Ctrl + S', 'Ctrl + O', 'B', '2020-03-25'),
(67, 30, 'Tautan berikut digunakan untuk memformat teks sehingga italic.', '', 'Ctrl + B', 'Ctrl + I', 'Ctrl + U', 'Ctrl + S', 'Ctrl + O', 'B', '2020-03-25'),
(68, 31, 'Tautan berikut digunakan untuk memformat teks sehingga italic.', '', 'Ctrl + B', 'Ctrl + I', 'Ctrl + U', 'Ctrl + S', 'Ctrl + O', 'B', '2020-03-25'),
(69, 32, 'Tautan berikut digunakan untuk memformat teks sehingga italic.', '', 'Ctrl + B', 'Ctrl + I', 'Ctrl + U', 'Ctrl + S', 'Ctrl + O', 'B', '2020-03-25'),
(70, 28, 'Untuk menambahkan baris di Excel, klik perintah â€¦ pada menu Sisipkan.', '', 'Masukkan sel', 'Masukkan garis lembar', 'Sisipkan kolom sheet', 'Sisipkan sheet', 'Masukkan nama', 'B', '2020-03-25'),
(71, 29, 'Untuk menambahkan baris di Excel, klik perintah â€¦ pada menu Sisipkan.', '', 'Masukkan sel', 'Masukkan garis lembar', 'Sisipkan kolom sheet', 'Sisipkan sheet', 'Masukkan nama', 'B', '2020-03-25'),
(72, 30, 'Untuk menambahkan baris di Excel, klik perintah â€¦ pada menu Sisipkan.', '', 'Masukkan sel', 'Masukkan garis lembar', 'Sisipkan kolom sheet', 'Sisipkan sheet', 'Masukkan nama', 'B', '2020-03-25'),
(73, 31, 'Untuk menambahkan baris di Excel, klik perintah â€¦ pada menu Sisipkan.', '', 'Masukkan sel', 'Masukkan garis lembar', 'Sisipkan kolom sheet', 'Sisipkan sheet', 'Masukkan nama', 'B', '2020-03-25'),
(74, 32, 'Untuk menambahkan baris di Excel, klik perintah â€¦ pada menu Sisipkan.', '', 'Masukkan sel', 'Masukkan garis lembar', 'Sisipkan kolom sheet', 'Sisipkan sheet', 'Masukkan nama', 'B', '2020-03-25'),
(75, 28, 'Ctrl + P adalah singkatan untuk memunculkan kotak dialog.', '', 'mencetak', 'anpassen', 'pemanas', 'Format sel', 'Penyiapan halaman', 'A', '2020-03-25'),
(76, 29, 'Ctrl + P adalah singkatan untuk memunculkan kotak dialog.', '', 'mencetak', 'anpassen', 'pemanas', 'Format sel', 'Penyiapan halaman', 'A', '2020-03-25'),
(77, 30, 'Ctrl + P adalah singkatan untuk memunculkan kotak dialog.', '', 'mencetak', 'anpassen', 'pemanas', 'Format sel', 'Penyiapan halaman', 'A', '2020-03-25'),
(78, 31, 'Ctrl + P adalah singkatan untuk memunculkan kotak dialog.', '', 'mencetak', 'anpassen', 'pemanas', 'Format sel', 'Penyiapan halaman', 'A', '2020-03-25'),
(79, 32, 'Ctrl + P adalah singkatan untuk memunculkan kotak dialog.', '', 'mencetak', 'anpassen', 'pemanas', 'Format sel', 'Penyiapan halaman', 'A', '2020-03-25'),
(80, 28, 'Simbol â€œUndoâ€ berfungsi.', '', 'Cetak dokumen', 'Buang perubahan', 'Buka file', 'Simpan file', 'Potong bagian dari dokumen', 'B', '2020-03-25'),
(81, 29, 'Simbol â€œUndoâ€ berfungsi.', '', 'Cetak dokumen', 'Buang perubahan', 'Buka file', 'Simpan file', 'Potong bagian dari dokumen', 'B', '2020-03-25'),
(82, 30, 'Simbol â€œUndoâ€ berfungsi.', '', 'Cetak dokumen', 'Buang perubahan', 'Buka file', 'Simpan file', 'Potong bagian dari dokumen', 'B', '2020-03-25'),
(83, 31, 'Simbol â€œUndoâ€ berfungsi.', '', 'Cetak dokumen', 'Buang perubahan', 'Buka file', 'Simpan file', 'Potong bagian dari dokumen', 'B', '2020-03-25'),
(84, 32, 'Simbol â€œUndoâ€ berfungsi.', '', 'Cetak dokumen', 'Buang perubahan', 'Buka file', 'Simpan file', 'Potong bagian dari dokumen', 'B', '2020-03-25'),
(85, 28, 'Ikon â€œSaveâ€, â€œRedoâ€ dan â€œUndoâ€ adalah bagian dari menu.', '', 'Band', 'Tombol Office', 'Status bar', 'Judul bar', 'Quick Launch toolbar', 'E', '2020-03-25'),
(86, 29, 'Ikon â€œSaveâ€, â€œRedoâ€ dan â€œUndoâ€ adalah bagian dari menu.', '', 'Band', 'Tombol Office', 'Status bar', 'Judul bar', 'Quick Launch toolbar', 'E', '2020-03-25'),
(87, 30, 'Ikon â€œSaveâ€, â€œRedoâ€ dan â€œUndoâ€ adalah bagian dari menu.', '', 'Band', 'Tombol Office', 'Status bar', 'Judul bar', 'Quick Launch toolbar', 'E', '2020-03-25'),
(88, 31, 'Ikon â€œSaveâ€, â€œRedoâ€ dan â€œUndoâ€ adalah bagian dari menu.', '', 'Band', 'Tombol Office', 'Status bar', 'Judul bar', 'Quick Launch toolbar', 'E', '2020-03-25'),
(89, 32, 'Ikon â€œSaveâ€, â€œRedoâ€ dan â€œUndoâ€ adalah bagian dari menu.', '', 'Band', 'Tombol Office', 'Status bar', 'Judul bar', 'Quick Launch toolbar', 'E', '2020-03-25'),
(90, 28, 'Cara pintas untuk menyimpan buku kerja di Excel adalah.', '', 'Ctrl + B', 'Ctrl + P', 'Ctrl + C', 'Ctrl + V', 'Ctrl + S', 'E', '2020-03-25'),
(91, 29, 'Cara pintas untuk menyimpan buku kerja di Excel adalah.', '', 'Ctrl + B', 'Ctrl + P', 'Ctrl + C', 'Ctrl + V', 'Ctrl + S', 'E', '2020-03-25'),
(92, 30, 'Cara pintas untuk menyimpan buku kerja di Excel adalah.', '', 'Ctrl + B', 'Ctrl + P', 'Ctrl + C', 'Ctrl + V', 'Ctrl + S', 'E', '2020-03-25'),
(93, 31, 'Cara pintas untuk menyimpan buku kerja di Excel adalah.', '', 'Ctrl + B', 'Ctrl + P', 'Ctrl + C', 'Ctrl + V', 'Ctrl + S', 'E', '2020-03-25'),
(94, 32, 'Cara pintas untuk menyimpan buku kerja di Excel adalah.', '', 'Ctrl + B', 'Ctrl + P', 'Ctrl + C', 'Ctrl + V', 'Ctrl + S', 'E', '2020-03-25'),
(95, 28, 'Rumus dalam Ms. Excel yang digunakan untuk menghitung rata-rata data adalah.', '', 'SUM', 'Max', 'RATA-RATA', 'MIN', 'JIKA', 'C', '2020-03-25'),
(96, 29, 'Rumus dalam Ms. Excel yang digunakan untuk menghitung rata-rata data adalah.', '', 'SUM', 'Max', 'RATA-RATA', 'MIN', 'JIKA', 'C', '2020-03-25'),
(97, 30, 'Rumus dalam Ms. Excel yang digunakan untuk menghitung rata-rata data adalah.', '', 'SUM', 'Max', 'RATA-RATA', 'MIN', 'JIKA', 'C', '2020-03-25'),
(98, 31, 'Rumus dalam Ms. Excel yang digunakan untuk menghitung rata-rata data adalah.', '', 'SUM', 'Max', 'RATA-RATA', 'MIN', 'JIKA', 'C', '2020-03-25'),
(100, 28, 'Rumus dalam Ms. Excel yang digunakan untuk menghitung rata-rata data adalah.', '', 'SUM', 'Max', 'RATA-RATA', 'MIN', 'JIKA', 'C', '2020-03-25'),
(101, 29, 'Rumus dalam Ms. Excel yang digunakan untuk menghitung rata-rata data adalah.', '', 'SUM', 'Max', 'RATA-RATA', 'MIN', 'JIKA', 'C', '2020-03-25'),
(102, 30, 'Rumus dalam Ms. Excel yang digunakan untuk menghitung rata-rata data adalah.', '', 'SUM', 'Max', 'RATA-RATA', 'MIN', 'JIKA', 'C', '2020-03-25'),
(103, 31, 'Rumus dalam Ms. Excel yang digunakan untuk menghitung rata-rata data adalah.', '', 'SUM', 'Max', 'RATA-RATA', 'MIN', 'JIKA', 'C', '2020-03-25'),
(104, 32, 'Rumus dalam Ms. Excel yang digunakan untuk menghitung rata-rata data adalah.', '', 'SUM', 'Max', 'RATA-RATA', 'MIN', 'JIKA', 'C', '2020-03-25'),
(105, 28, 'Untuk memindahkan atau menyalin lembar kerja, menu yang harus dipilih setelah mengklik kanan pada tab lembar adalah.', '', 'hapus', 'rename', 'Pilih semua lembar', 'memindahkan atau menyalin', 'rekatkan', 'D', '2020-03-25'),
(106, 29, 'Untuk memindahkan atau menyalin lembar kerja, menu yang harus dipilih setelah mengklik kanan pada tab lembar adalah.', '', 'hapus', 'rename', 'Pilih semua lembar', 'memindahkan atau menyalin', 'rekatkan', 'D', '2020-03-25'),
(107, 30, 'Untuk memindahkan atau menyalin lembar kerja, menu yang harus dipilih setelah mengklik kanan pada tab lembar adalah.', '', 'hapus', 'rename', 'Pilih semua lembar', 'memindahkan atau menyalin', 'rekatkan', 'D', '2020-03-25'),
(108, 31, 'Untuk memindahkan atau menyalin lembar kerja, menu yang harus dipilih setelah mengklik kanan pada tab lembar adalah.', '', 'hapus', 'rename', 'Pilih semua lembar', 'memindahkan atau menyalin', 'rekatkan', 'D', '2020-03-25'),
(109, 32, 'Untuk memindahkan atau menyalin lembar kerja, menu yang harus dipilih setelah mengklik kanan pada tab lembar adalah.', '', 'hapus', 'rename', 'Pilih semua lembar', 'memindahkan atau menyalin', 'rekatkan', 'D', '2020-03-25'),
(110, 28, 'Untuk dapat membingkai sel, menu berikut harus dipilih dalam kotak dialog â€œFormat selâ€.', '', 'jumlah', 'penjajaran', 'batas', 'fon', 'fill', 'C', '2020-03-25'),
(111, 29, 'Untuk dapat membingkai sel, menu berikut harus dipilih dalam kotak dialog â€œFormat selâ€.', '', 'jumlah', 'penjajaran', 'batas', 'fon', 'fill', 'C', '2020-03-25'),
(112, 30, 'Untuk dapat membingkai sel, menu berikut harus dipilih dalam kotak dialog â€œFormat selâ€.', '', 'jumlah', 'penjajaran', 'batas', 'fon', 'fill', 'C', '2020-03-25'),
(113, 31, 'Untuk dapat membingkai sel, menu berikut harus dipilih dalam kotak dialog â€œFormat selâ€.', '', 'jumlah', 'penjajaran', 'batas', 'fon', 'fill', 'C', '2020-03-25'),
(114, 32, 'Untuk dapat membingkai sel, menu berikut harus dipilih dalam kotak dialog â€œFormat selâ€.', '', 'jumlah', 'penjajaran', 'batas', 'fon', 'fill', 'C', '2020-03-25'),
(115, 32, 'Gambar dibawah ini adalahâ€¦', 'mouse.png', 'Mouse', 'monitor', 'keyboard', 'CPU', 'Router', 'A', '2020-03-25'),
(116, 28, 'Untuk mewarnai pada aplikasi microsoft paint menggunakan menuâ€¦', 'msword1.png', 'Menu selec nomor 1', 'menu fill with color nomor 2', 'menu brush nomor 3', 'Menu Nomor 4', 'Benar Semua', 'B', '2020-03-25'),
(117, 29, 'Untuk mewarnai pada aplikasi microsoft paint menggunakan menuâ€¦', 'msword1.png', 'Menu selec nomor 1', 'menu fill with color nomor 2', 'menu brush nomor 3', 'Menu Nomor 4', 'Benar Semua', 'B', '2020-03-25'),
(118, 30, 'Untuk mewarnai pada aplikasi microsoft paint menggunakan menuâ€¦', 'msword1.png', 'Menu selec nomor 1', 'menu fill with color nomor 2', 'menu brush nomor 3', 'Menu Nomor 4', 'Benar Semua', 'B', '2020-03-25'),
(119, 31, 'Untuk mewarnai pada aplikasi microsoft paint menggunakan menuâ€¦', 'msword1.png', 'Menu selec nomor 1', 'menu fill with color nomor 2', 'menu brush nomor 3', 'Menu Nomor 4', 'Benar Semua', 'B', '2020-03-25'),
(120, 32, 'Untuk mewarnai pada aplikasi microsoft paint menggunakan menuâ€¦', 'msword1.png', 'Menu selec nomor 1', 'menu fill with color nomor 2', 'menu brush nomor 3', 'Menu Nomor 4', 'Benar Semua', 'B', '2020-03-25'),
(121, 28, 'Penyedia Layanan Internet adalah perpanjangan dari.', '', 'ISP', 'ISPV', 'IISP', 'ISCP', 'ISPD', 'A', '2020-03-25'),
(122, 29, 'Penyedia Layanan Internet adalah perpanjangan dari.', '', 'ISP', 'ISPV', 'IISP', 'ISCP', 'ISPD', 'A', '2020-03-25'),
(123, 30, 'Penyedia Layanan Internet adalah perpanjangan dari.', '', 'ISP', 'ISPV', 'IISP', 'ISCP', 'ISPD', 'A', '2020-03-25'),
(124, 31, 'Penyedia Layanan Internet adalah perpanjangan dari.', '', 'ISP', 'ISPV', 'IISP', 'ISCP', 'ISPD', 'A', '2020-03-25'),
(125, 32, 'Penyedia Layanan Internet adalah perpanjangan dari.', '', 'ISP', 'ISPV', 'IISP', 'ISCP', 'ISPD', 'A', '2020-03-25'),
(126, 28, 'ISP singkatan dari', '', 'Internet Service Provider (ISP)', 'Telkom', 'Indosat', 'Server', 'Benar Semua', 'A', '2020-03-25'),
(127, 29, 'ISP singkatan dari', '', 'Internet Service Provider (ISP)', 'Telkom', 'Indosat', 'Server', 'Benar Semua', 'A', '2020-03-25'),
(128, 30, 'ISP singkatan dari', '', 'Internet Service Provider (ISP)', 'Telkom', 'Indosat', 'Server', 'Benar Semua', 'A', '2020-03-25'),
(129, 31, 'ISP singkatan dari', '', 'Internet Service Provider (ISP)', 'Telkom', 'Indosat', 'Server', 'Benar Semua', 'A', '2020-03-25'),
(130, 32, 'ISP singkatan dari', '', 'Internet Service Provider (ISP)', 'Telkom', 'Indosat', 'Server', 'Benar Semua', 'A', '2020-03-25'),
(131, 28, 'Alat yang bertanggung jawab untuk pertukaran data antara internet digital dan analog dan sebaliknya disebut.', '', 'modem', 'Monitor', 'USB', 'CPU', 'Keyboard', 'A', '2020-03-25'),
(132, 29, 'Alat yang bertanggung jawab untuk pertukaran data antara internet digital dan analog dan sebaliknya disebut.', '', 'modem', 'Monitor', 'USB', 'CPU', 'Keyboard', 'A', '2020-03-25'),
(133, 30, 'Alat yang bertanggung jawab untuk pertukaran data antara internet digital dan analog dan sebaliknya disebut.', '', 'modem', 'Monitor', 'USB', 'CPU', 'Keyboard', 'A', '2020-03-25'),
(134, 31, 'Alat yang bertanggung jawab untuk pertukaran data antara internet digital dan analog dan sebaliknya disebut.', '', 'modem', 'Monitor', 'USB', 'CPU', 'Keyboard', 'A', '2020-03-25'),
(135, 32, 'Alat yang bertanggung jawab untuk pertukaran data antara internet digital dan analog dan sebaliknya disebut.', '', 'modem', 'Monitor', 'USB', 'CPU', 'Keyboard', 'A', '2020-03-25'),
(136, 32, 'Nama sebuah alat yang dapat dilihat atau dilihat di World Wide Web, pada program pengiriman pesan instan disebut.', '', 'televisi', 'CCTV', 'Webcam', 'Monitor', 'Mouse', 'C', '2020-03-25'),
(137, 28, 'Data / unggahan yang masuk â€“ unduh ke akun kami.', '', 'Bandwidth', 'tulang punggung', 'telepon', 'byte', 'megabytes', 'A', '2020-03-25'),
(138, 29, 'Data / unggahan yang masuk â€“ unduh ke akun kami.', '', 'Bandwidth', 'tulang punggung', 'telepon', 'byte', 'megabytes', 'A', '2020-03-25'),
(139, 30, 'Data / unggahan yang masuk â€“ unduh ke akun kami.', '', 'Bandwidth', 'tulang punggung', 'telepon', 'byte', 'megabytes', 'A', '2020-03-25'),
(140, 31, 'Data / unggahan yang masuk â€“ unduh ke akun kami.', '', 'Bandwidth', 'tulang punggung', 'telepon', 'byte', 'megabytes', 'A', '2020-03-25'),
(141, 32, 'Data / unggahan yang masuk â€“ unduh ke akun kami.', '', 'Bandwidth', 'tulang punggung', 'telepon', 'byte', 'megabytes', 'A', '2020-03-25'),
(142, 32, 'Negara pengguna Internet terbesar di dunia adalah.', '', 'Cina', 'Jepang', 'India', 'Amerika Serikat', 'Negara +62', 'A', '2020-03-25'),
(143, 28, 'Istilah yang biasa digunakan untuk mesin pencari informasi disebut sebagai', '', 'Google', 'Search Engine', 'mencari', 'mesin', 'Yahoo', 'B', '2020-03-25'),
(144, 29, 'Istilah yang biasa digunakan untuk mesin pencari informasi disebut sebagai', '', 'Google', 'Search Engine', 'mencari', 'mesin', 'Yahoo', 'B', '2020-03-25'),
(145, 30, 'Istilah yang biasa digunakan untuk mesin pencari informasi disebut sebagai', '', 'Google', 'Search Engine', 'mencari', 'mesin', 'Yahoo', 'B', '2020-03-25'),
(146, 31, 'Istilah yang biasa digunakan untuk mesin pencari informasi disebut sebagai', '', 'Google', 'Search Engine', 'mencari', 'mesin', 'Yahoo', 'B', '2020-03-25'),
(147, 32, 'Istilah yang biasa digunakan untuk mesin pencari informasi disebut sebagai', '', 'Google', 'Search Engine', 'mencari', 'mesin', 'Yahoo', 'B', '2020-03-25'),
(148, 28, 'Negara pertama yang mengembangkan Internet, adalah.', '', 'Cina', 'Jepang', 'India', 'Amerika Serikat', 'Korea Selatan', 'D', '2020-03-25'),
(149, 29, 'Negara pertama yang mengembangkan Internet, adalah.', '', 'Cina', 'Jepang', 'India', 'Amerika Serikat', 'Korea Selatan', 'D', '2020-03-25'),
(150, 30, 'Negara pertama yang mengembangkan Internet, adalah.', '', 'Cina', 'Jepang', 'India', 'Amerika Serikat', 'Korea Selatan', 'D', '2020-03-25'),
(151, 32, 'Negara pertama yang mengembangkan Internet, adalah.', '', 'Cina', 'Jepang', 'India', 'Amerika Serikat', 'Korea Selatan', 'D', '2020-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_topik_quiz`
--

CREATE TABLE `tb_topik_quiz` (
  `id_tq` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `tgl_buat` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `waktu_soal` int(8) NOT NULL,
  `info` varchar(250) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_topik_quiz`
--

INSERT INTO `tb_topik_quiz` (`id_tq`, `judul`, `id_kelas`, `id_mapel`, `tgl_buat`, `pembuat`, `waktu_soal`, `info`, `status`) VALUES
(1, 'Ulangan Harian 1', 1, 1, '2015-08-03', '1', 300, 'Ulangan tanggal 4-8-2015', 'aktif'),
(2, 'Ulangan Harian 1', 2, 2, '2015-08-05', 'admin', 1200, 'Ulangan hari Kamis', 'aktif'),
(3, 'Latihan Soal', 3, 3, '2015-08-05', '10', 1500, 'Jangan mencontek', 'aktif'),
(4, 'Ulangan Tengah Semester 1', 4, 1, '2015-08-07', 'admin', 600, 'Kerjakan dengan teliti', 'aktif'),
(5, 'Ulangan Remidial 1', 1, 2, '2015-08-11', 'admin', 1200, 'Kerjakan dengan jujur dan teliti', 'tidak aktif'),
(18, '', 0, 5, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, Jangan curang Ya!', 'aktif'),
(23, 'Ulangan Harian', 5, 0, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, Jangan curang ya!', 'aktif'),
(24, 'Ulangan Harian', 9, 0, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, Jangan curang ya!', 'aktif'),
(25, 'Ulangan Harian', 8, 0, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, Jangan curang ya!', 'aktif'),
(26, 'Ulangan Harian', 6, 0, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, Jangan curang ya!', 'aktif'),
(27, 'Ulangan Harian', 7, 0, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, Jangan curang ya!', 'aktif'),
(28, 'Ulangan Harian', 5, 5, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, jangan curang ya!', 'aktif'),
(29, 'Ulangan Harian', 8, 5, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, jangan curang ya!', 'aktif'),
(30, 'Ulangan Harian', 6, 5, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, jangan curang ya!', 'aktif'),
(31, 'Ulangan Harian', 9, 5, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, jangan curang ya!', 'aktif'),
(32, 'Ulangan Harian', 7, 5, '2020-03-25', 'admin', 1800, 'Kerjakan ulangan harian ini dengan benar dan jujur, jangan curang ya!', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  ADD PRIMARY KEY (`id_essay`);

--
-- Indexes for table `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  ADD PRIMARY KEY (`id_pilgan`);

--
-- Indexes for table `tb_topik_quiz`
--
ALTER TABLE `tb_topik_quiz`
  ADD PRIMARY KEY (`id_tq`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_file_materi`
--
ALTER TABLE `tb_file_materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_kelas_ajar`
--
ALTER TABLE `tb_kelas_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_mapel_ajar`
--
ALTER TABLE `tb_mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_nilai_essay`
--
ALTER TABLE `tb_nilai_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_nilai_pilgan`
--
ALTER TABLE `tb_nilai_pilgan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  MODIFY `id_pengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_soal_essay`
--
ALTER TABLE `tb_soal_essay`
  MODIFY `id_essay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_soal_pilgan`
--
ALTER TABLE `tb_soal_pilgan`
  MODIFY `id_pilgan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `tb_topik_quiz`
--
ALTER TABLE `tb_topik_quiz`
  MODIFY `id_tq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
