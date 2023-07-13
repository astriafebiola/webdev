-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2022 at 04:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zodiaku`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `alamat`, `email`, `gambar`) VALUES
(1, 'astrid', 'palangkaraya', 'astriafebiola13@gmail.com', 'IMG_20210719_113218.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `gambar`) VALUES
(1, 'image1.png'),
(2, 'image2.png'),
(3, 'image3.png'),
(4, 'aries1.png'),
(5, 'taurus1.png'),
(6, 'gemini1.png'),
(7, 'cancer1.png'),
(8, 'leo1.png'),
(9, 'virgo1.png'),
(10, 'libra1.png'),
(11, 'scorpio1.png'),
(12, 'sagitarius1.png'),
(13, 'carpicorn1.png'),
(14, 'aquarius1.png'),
(15, 'otldb9xd5nhxcddkphn1.jpg'),
(16, 'aries.png'),
(17, 'taurus.png'),
(18, 'gemini.png'),
(19, 'cancer.png'),
(20, 'leo.png'),
(21, 'virgo.png'),
(22, 'libra.png'),
(23, 'scorpio.png'),
(24, 'sagitarius.png'),
(25, 'carpicorn.png'),
(26, 'aquarius.png'),
(27, 'pisces1.png'),
(28, '019986300_1627876067-shutterstock_1887678631.jpg'),
(30, 'taajlio7vaql3ew8qvgb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `id` int(11) NOT NULL,
  `id_hari` int(11) NOT NULL,
  `nama_zodiak` varchar(100) NOT NULL,
  `karir` text NOT NULL,
  `keuangan` text NOT NULL,
  `percintaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`id`, `id_hari`, `nama_zodiak`, `karir`, `keuangan`, `percintaan`) VALUES
(1, 1, 'ARIES', 'Jika merasa kariermu tak mengalami kemajuan, maka dirimu harus berani melakukan perubahan. Dalam bisnis, mungkin ada kalanya untuk beristirihat sembari memikirkan strategi.', 'Keuanganmu sepertinya akan banyak dihabiskan untuk merealisasikan sebuah tujuan penting.', 'Single: Saat kamu terseret dalam hubungan cinta yang tak terlalu menarik, maka secara alami semesta akan membantumu untuk keluar.\r\n\r\n\r\n\r\n\r\nCouple: Nuansa baik dan intens sepertinya sedang terjadi dalam hubunganmu dan banyak kebahagiaan yang terjadi di dalamnya.'),
(2, 2, 'TAURUS', 'Dirimu akan mendapat banyak dukungan tentang pilihan kariermu saat ini. Dalam bisnis hubungan baik yang terjalin dalam masyarakat akan membantumu mengembangkan usaha.', 'Sepertinya akan terjadi penurunan dalam penghasilanmu, mungkin kamu harus memikirkan cara untuk membuatnya stabil kembali.', 'Single: Kamu mungkin akan menjadi lebih sensitif, saat suatu hubungan tak sesuai dengan rencanamu mungkin kamu akan menganggapnya sebagai hal yang sia-sia.\r\n\r\nCouple: Banyak hal romantis yang terjadi dalam hubunganmu, ini memang waktu yang tepat untuk meningkatkan gairah cinta di antara kalian.'),
(3, 3, 'GEMINI', 'Kinerjamu mungkin mengalami penurunan, tetapi hal itu tak akan mengganggu performamu. Dalam bisnis, sebaiknya jangan bawa masalah internal dalam bisnis sebagai konsumsi publik karena bisa membahayakanmu.', 'Jika tak mampu menyisakan uang untuk ditabung, setidaknya dirimu jangan terlalu boros.', 'Single: Orang-orang tertentu mungkin tak ada lagi dalam hidup, daripada meratapi kesepian kamu seharusnya beryukur karena pengaruh tak baik juga ikut hilang bersamanya.\r\n\r\nCouple: Jika tidak mampu mengkomunikasikan sesuatu dengan baik pada pasangan, maka semuanya akan terasa rumit dan berat untuk dihadapi.'),
(4, 4, 'CANCER', 'Dirimu perlu menghindari konflik dengan orang lain di tempat kerja agar tidak mengganggu kinerjamu. Dalam bisnis, dirimu mungkin perlu berkonsultasi untuk urusan bisnis pada orang yang lebih senior.', 'Dirimu perlu menghindari konflik dengan orang lain di tempat kerja agar tidak mengganggu kinerjamu. Dalam bisnis, dirimu mungkin perlu berkonsultasi untuk urusan bisnis pada orang yang lebih senior.', 'Single: Saat ini kamu lebih fokus untuk memanjakan diri dan menghabiskan waktu bersama orang-orang yang memang layak mendapatkan waktumu.\r\n\r\nCouple: Dirimu tidak boleh mennyembunyikan kebenaran hanya karena dirimu takut melukai perasan pasangan. Justru hal seperti itu bisa merusak hubungan dari dalam.'),
(5, 5, 'LEO', 'Single: Saat ini kamu lebih fokus untuk memanjakan diri dan menghabiskan waktu bersama orang-orang yang memang layak mendapatkan waktumu.\r\n\r\nCouple: Dirimu tidak boleh mennyembunyikan kebenaran hanya karena dirimu takut melukai perasan pasangan. Justru hal seperti itu bisa merusak hubungan dari dalam.', 'Keasalahan kecil saat transaksi keuangan bisa menjadi masalah yang rumit jadi lebih berhati-hati.', 'Single: Kamu cenderung memiliki waktu yang sibuk, meskipun ini tak berarti bahwa tak ada peluang cinta dalam hidupmu sama sekali.\r\n\r\nCouple: Saling memberi kebebasan dan kenyamanan satu sama lain, tak akan membuatmu kehilangan justru kalian akan semakin merasa sangat membutuhkan satu sama lain.'),
(6, 6, 'VIRGO', 'Saat dirimu bisa lebih disiplin, maka dirimu akan mendapatkan apa pun yang diinginkan. Dalam bisnis, kamu harus bisa mengesampingkan ego dan bisa menerima masukan dari orang lain.', 'Sepertinya tabungan yang terkumpul akan dialokasikan lebih banyak untuk urusan properti.', 'Sepertinya tabungan yang terkumpul akan dialokasikan lebih banyak untuk urusan properti.'),
(7, 7, 'LIBRA', 'Perubahan yang terjadi di tempat kerja menuntutmu harus lebih fleksibel dalam bekerja. Dalam bisnis, sepertinya dirimu dituntut agar lebih bisa bertindak cepat dalam kondisi yang sulit.', 'Perubahan yang terjadi di tempat kerja menuntutmu harus lebih fleksibel dalam bekerja. Dalam bisnis, sepertinya dirimu dituntut agar lebih bisa bertindak cepat dalam kondisi yang sulit.', 'Single: Sebaik-baik kamu menyimpan luka lama, tetap yang terbaik ialah membuka diri dan menyembuhkannya dengan segera.\r\n\r\nCouple: Banyak hal yang membahagiakan dalam hubunganmu namun juga ada hal yang bisa saja mengecewakan. Jadi, dirimu harus bisa berpikir dengan lebih luas dan jangan terlalu terbawa perasaan.'),
(8, 8, 'SCORPIO', 'Tambahan tanggung jawab dalam pekerjaan akan menuntutmu untuk lebih disiplin lagi. Dalam bisnis, seseorang yang dipercaya mungkin akan berusaha mengkhianatimu, jadi berhati-hatilah.', 'Tambahan tanggung jawab dalam pekerjaan akan menuntutmu untuk lebih disiplin lagi. Dalam bisnis, seseorang yang dipercaya mungkin akan berusaha mengkhianatimu, jadi berhati-hatilah.', 'Tambahan tanggung jawab dalam pekerjaan akan menuntutmu untuk lebih disiplin lagi. Dalam bisnis, seseorang yang dipercaya mungkin akan berusaha mengkhianatimu, jadi berhati-hatilah.'),
(9, 9, 'SAGITARIUS', 'Tunjukkan kinerja terbaik yang bisa diusahakan jikan dirimu berusaha mendapatkan promosi. Dalam bisnis, sepertinya ada sebuah masalah besar yang harus didahulukan daripada yang lainnya.', 'Tidak perlu menguras tabungan untuk mengikuti gengsi, lebih baik terlihat sederhana namun berkecukupan daripada menumpuk hutang.', 'Single: Kamu akan memiliki kesempatan untuk melepaskan semua drama, beban dan perasaan terluka dan semesta akan mendorongmu ke dalam hubungan yang serius.\r\n\r\nCouple: Walau pun hubunganmu mengalami pasang surut, namun banyak sekali hal-hal yang menkjubkan yang akan terjadi.'),
(10, 10, 'CARPICORN', 'Dirimu tak perlu cemas dengan perubaha yang terjadi dalam pekerjaan, justru itu akan menjadi kesempatan untuk berkembang. Dalam bisnis, sebaiknya jangan menghabiskan modal untuk hal-hal yang kurang diperlukan agar bisa lebih menghemat pengeluaran.', 'Jika punya sebuah impian, seperti jalan-jalan atau membeli barang tertentu dirimu bisa mulai untuk menyisihkan tabungan khusus.', 'Single: Dirimu mungkin akan mempertimbangkan komitmen yang serius. Jadi, bicaralah dengan teman yang dipercaya tentang apa yang kamu inginkan.\r\n\r\nCouple: Saat dirimu sudah menyatakan komitmen dengan seseorang, maka dirimu juga harus bersedia membagi waktu dan hidupmu untuknya. Itu adalah bagian yag tak bisa dipisahkan.'),
(11, 11, 'AQUARIUS', 'Sikap optimis dibutuhkan dalam pekerjaan, dirimu tak perlu khawatir karena akan selalu ada orang yang akan membantumu. Dalam bisnis, sebaiknya jangan terlalu monoton dengan satu metode, dirimu harus berani bereksplorasi.', 'Walau tak ada peningkatan, keuanganmu masih terbilang aman.', 'Single: Kemampuanmu dalam bersosialisasi mampu membangun hubungan yang baik dengan siapa saja. Bisa jadi kamu akan mengubah status kenalan menjadi lebih dekat.\r\n\r\nCouple: Bisa menjalin hubungan pertemanan dengan pasangan adalah sebuah nilai lebih, kalian akan bisa menjaga hubungan kalian dengann mudah dan kenyamanan seperti ini harus dipertahankan.'),
(12, 12, 'PISCES', 'Sikap optimis dibutuhkan dalam pekerjaan, dirimu tak perlu khawatir karena akan selalu ada orang yang akan membantumu. Dalam bisnis, sebaiknya jangan terlalu monoton dengan satu metode, dirimu harus berani bereksplorasi.', 'Sikap optimis dibutuhkan dalam pekerjaan, dirimu tak perlu khawatir karena akan selalu ada orang yang akan membantumu. Dalam bisnis, sebaiknya jangan terlalu monoton dengan satu metode, dirimu harus berani bereksplorasi.', 'Sikap optimis dibutuhkan dalam pekerjaan, dirimu tak perlu khawatir karena akan selalu ada orang yang akan membantumu. Dalam bisnis, sebaiknya jangan terlalu monoton dengan satu metode, dirimu harus berani bereksplorasi.');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `id_informasi` varchar(100) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `id_gallery` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `id_informasi`, `id_admin`, `judul`, `isi`, `id_gallery`) VALUES
(1, '1', 1, 'Cara Gemini Meminta Maaf', 'Gemini awalnya akan bertindak seperti tidak ada yang salah sama sekali sampai kamu membuat mereka sadar bahwa mereka harus meminta maaf. Namun, mereka tidak akan pernah mengulangi kesalahan yang sama apa yang telah mereka lakukan secara tidak sengaja karena mereka tahu bahwa menyakiti seseorang dengan sengaja tanpa meminta maaf itu buruk. Mereka mungkin membeli beberapa hadiah untuk meminta maaf.', 30),
(2, '2', 1, 'Cara Menghadapi Aquarius yang Sedang Marah', '1. Beri ruang dan waktu untuk menyendiri.\r\n2. Beri ruang dan waktu untuk menyendiri.\r\n3. Beri ruang dan waktu untuk menyendiri.\r\n4. Jangan pernah mengulangi kesalahan yang sama', 15),
(9, '3', 1, '3 Zodiak Paling Workaholic, Tetap Kerja Meski Sedang Libur', '1. Aries, meski sedang libur, ia tetap memikirkan pekerjaannya. Ia juga akan tetap bekerja di sela-sela waktu luangnya di hari libur.\r\n2. Gemini, pemilik zodiak ini akan bekerja dengan sungguh-sungguh kapan pun itu.\r\n3. Sagitarius, pemilik zodiak ini akan bekerja dengan sangat keras bahkan ketika ia memiliki waktu untuk libur. ', 28);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `id_admin`, `user`, `password`) VALUES
(1, 1, 'astrid', 'astrid123');

-- --------------------------------------------------------

--
-- Table structure for table `minggu`
--

CREATE TABLE `minggu` (
  `id` int(11) NOT NULL,
  `id_minggu` int(11) NOT NULL,
  `nama_zodiak` varchar(100) NOT NULL,
  `karir` text NOT NULL,
  `keuangan` text NOT NULL,
  `percintaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `minggu`
--

INSERT INTO `minggu` (`id`, `id_minggu`, `nama_zodiak`, `karir`, `keuangan`, `percintaan`) VALUES
(1, 1, 'ARIES', 'Jangan takut untuk menonjolkan dirimu, untuk mendapatkan kesuksesan kamu butuh mengambil langkah yang besar. Penting untuk memberikan tantangan pada dirimu, saat semuanya terselesaikan, tentu saja levelmu juga akan lebih tinggi. Kamu perlu menata ulang rencana besar untuk memajukan bisnis agar tak melebar pada hal yang kurang perlu.', 'Jangan takut untuk menonjolkan dirimu, untuk mendapatkan kesuksesan kamu butuh mengambil langkah yang besar. Penting untuk memberikan tantangan pada dirimu, saat semuanya terselesaikan, tentu saja levelmu juga akan lebih tinggi. Kamu perlu menata ulang rencana besar untuk memajukan bisnis agar tak melebar pada hal yang kurang perlu.', 'Single: Tidak semua ekspektasimu akan terpenuhi, itu juga yang perlu ditanamkan dalam pikiranmu tentang cinta saat ini. Jadi, kamu harus lebih sering melihat realitas yang akan mengajarkanmu banyak hal. Tidak ada gunanya punya banyak teori tentang cinta, sementara kamu sendiri tidak pernah berani mengambil sikap untuk memulainya.\r\n\r\nCouple: Hubungan cinta membutuhkan perhatianmu, kamu butuh bekerja keras untuk memastikan hubungan ini bertahan lama. Kamu juga mungkin akan diuji dengan hal-hal yang tak terduga dalam hubunganmu. Meski kamu merasa tak nyaman, tapi pastikan semuanya baik-baik saja dna tetap hadapi semuanya dengan tenang dan bersikap dewasa.'),
(2, 2, 'TAURUS', 'Jangan menyesali keputusan karena kamu mendorong diri sendiri untuk berkembang, ini hal yang baik untuk kemajuan kariermu. Lebih baik menyesal karena melakukan sesuatu daripada tidak pernah sama sekali. Meski kerap mengalami kegagalan, kamu harus tetap optimis demi kemajuan bisnismu, karena tak ada hal yang benar-benar mudah untuk dilalui. Jadi kamu harus bisa lebih yakin bahwa hari esok akan lebih baik.', 'Untuk menjaga keuanganmu tetap stabil, hindarilah berbelanja secara sembarangan. Jangan sampai lapar mata membuatmu kalap dan tak berpikir panjang untuk menghabiskan uang.', 'Single: Kamu harus belajar lebih terbuka dan fleksibel menerima apa pun yang mungkin terjadi. Jika tak ingin membuang waktu maka hindari melibatkan perasaan. Jika kamu memang sudah tahu bahwa suatu hubungan tak berpotensi baik untuk ke depannya, maka hindari bermain hati di dalamnya. Jangan buang waktumu untuk hal yang tidak pasti.\r\n\r\nCouple: Pastikan kamu selalu ada untuk memberi dan menerima dalam memelihara rasa cinta dengan pasangan dan belajar untuk mengendalikan perasaanmu. Meski hubungan kalian tidak selalu baik-baik saja, tapi dirimu dan pasangan bisa melengkapi satu sama lain, dan ini adalah kemewahan dalam hubungan.'),
(3, 3, 'GEMINI', 'Pekerjaan utamamu tetap baik seperti biasa meski pencapaianmu ada yang menurun. Tapi tak perlu khawatir karena kamu masih bisa mengusahakannya di lain kesempatan. Dalam bisnis, kamu mungkin perlu menaikkan semangatmu agar lebih kreatif dalam mengembangkan usaha. Jika hanya berdiam saja makan mustahil perubahan akan datang dengan sendirinya.', 'Pekerjaan utamamu tetap baik seperti biasa meski pencapaianmu ada yang menurun. Tapi tak perlu khawatir karena kamu masih bisa mengusahakannya di lain kesempatan. Dalam bisnis, kamu mungkin perlu menaikkan semangatmu agar lebih kreatif dalam mengembangkan usaha. Jika hanya berdiam saja makan mustahil perubahan akan datang dengan sendirinya.', 'Single: Kamu tahu tak bisa selamanya sendiri, meskipun nyaman menjalani semuanya sendiri tapi kamu yakin untuk bisa menemukan seseorang yang tepat suatu saat. Hubungan asmara mungkin terkadang membuatmu sedikit takut akan kegagalan atau dikhianati tapi itu bukan alasan untuk berhenti menyerah dan tak mengusakan hal-hal baik dalam hidupmu.\r\n\r\nCouple: Entah mengapa kamu merasa ingin lebih genit dan spontan dari biasanya pada pasangan, itu karena kamu ingin terlihat lebih manis. Kamu juga sangat bersemangat menjalani hubungan ini, mungkin karena pasanganmu bisa memberi segala yang kamu butuhkan sehingga kamu merasa dilengkapi.'),
(4, 4, 'CANCER', 'Pekerjaanmu sejauh ini berjalan dengan aman dan terkendali, kamu juga bisa selalu diandalkan. Hal yang wajar bila semangat itu kadang naik dan turun, tapi kamu selalu bisa mengatasinya dengan baik. Dalam bisnis, tak perlu membandingkan diri dengan yang lain karena semua punya lajunya masing-masing. Meski tak mendapat pencapaian sebaik orang lain, jangan sampai itu membuatmu patah semangat dan berhenti mengusahakan yang terbaik.', 'Secara finansial, penghasilanmu mungkin terbilang biasa saja tapi kamu patut berbangga diri karena selalu memenuhi kebutuhan yang selalu mencukupi. Lebih banyak bersyukur dengan begitu hidupmu akan selalu tercukupi.', 'Single: Bertahan dalam kesendirian menjadi kebiasaanmu, kamu akan menyibukkan diri dengan banyak hal kecuali hubungan asmara. Walau saat ini kamu belum tertarik melabuhkan hati pada siapa pun, namun keinginan itu tetap ada dalam dirimu entah besok atau lusa kamu pasti akan merasakannya. Jadi jangan terlalu antipati sebab cinta bisa datang dengan hal-hal tak terduga.\r\n\r\nCouple: Segalanya telah cukup stabil dalam hubungan cintamu dengan pasangan. Kamu merasa telah pas dan semua pada porsinya. Ini mungkin jawaban atas kebahagiaanmu, setelah beberapa waktu sebelumnya kamu selalu gagal dalam hubungan asmara dan kamu pantas mendapatkannya.'),
(5, 5, 'LEO', 'eee', 'eee', 'eeee'),
(6, 6, 'VIRGO', 'Kamu selalu mencari jalan untuk menaikkan kinerjamu, pada dasarnya kamu tetap berusaha sebaik mungkin dan itu sudah cukup. Meski tak mendapatkan hasil yang diekspektasikan, setidaknya kamu merasa puas karena sudah meksimal mengusahakannya. Dalam bisnis, jika merasa perlu untuk membuat perubahan maka jangan ragu dengan hal itu. Mencoba hal-hal baru juga akan semakin menambah wawasanmu.', 'Untuk memperbaiki kondisi finansialmu, kamu akan berusaha tetap tegas dan jelas tentang bagaimana menggunakan uangmu. Kurangi kebutuhan yang kurang perlu untuk memperbanyak pos-pos simpanan.', 'Single: Pikiran untuk menemukan cinta dan membangun hubungan bisa menakutkan di satu sisi, tapi di sisi lain kamu juga takut kesepian. Ini mungkin sering dirasakan setiap orang karena hubungan apa pun itu pasti memiliki risiko. Dan bisa jadi yang kamu takutkan sebenarnya hanya berasal dari dalam pikiranmu saja.\r\n\r\nCouple: Meski karaktermu jauh dari sisi romantis, tetapi kamu mungkin mencoba mengubah beberapa kebiasaan yang mendapat tanggapan lucu dari pasangan. Kamu ingin menunjukkan bahwa kamu bukan orang egois yang tak bisa berubah, karena kamu menyadari bahwa hubungan adalah tentang dua orang yang mau tak mau harus fleksibel dan banyak mengalah.'),
(7, 7, 'LIBRA', 'Setiap tugas selalu datang dengan kadar kesulitan yang berbeda-beda, tapi jangan terlalu banyak mengeluh dan tetaplah profesional. Saat kamu bisa menyelesaikan satu tantangan maka levelmu sudah naik satu tingkat. Begitu juga dalam bisnis, kamu harus selalu bersiap dengan segala tantangan yang mungkin sewaktu-sewaktu bisa menghampirimu.', 'Keuanganmu saat ini sedikit mengkhawatirkan, terutama jika kamu ingin mentraktir teman-temanmu. Sesuaikan kondisi keuanganmu baru membuat keputusan.', 'Single: Pastikan kamu tidak memaksakan diri untuk menyenangkan orang lain hanya karena dia ingin kamu melakukan ini itu. Bahkan jika itu berlanjut, itu rentan menjadi hubungan beracun, sesuatu yang dilandasi hal buruk dari awal hanya akan membawa sakit hati. Jadi hentikan sekarang daripada menyesal di kemudian hari.\r\n\r\nCouple: Kamu tentu menginginkan cinta yang melimpah dalam hubunganmu tapi jika pasanganmu bukan tipe orang yang peka, maka kamu harus berterus terang padanya. Hindari menggunakan kode-kode untuk menjelaskan pada pasangan. Juga untuk menghindari kesalahpahaman, jadi lebih baik bicarakan semuanya dengan terbuka.'),
(8, 8, 'SCORPIO', 'Saat kamu mengeluh dengan pekerjaan maka ingatlah masih banyak orang yang memiliki kesulitan di luar sana lebih dari dirimu. Pokuslah pada hal-hal positifnya, setidaknya itu akan membantumu lebih bersemangat. Dalam bisnis, lebih baik hindari kecurangan yang dapat merugikan dirimu atau usahamu. Tidak hanya untuk saat ini, kecurangan bisa menghancurkanmu dalam waktu yang sangat lama.', 'Jika merasa tabunganmu masih belum banyak, maka kamu harus bisa menekan pengeluaran yang kurang perlu. Kurangi belanja online dan penggunaan dompet digital yang membuatmu jadi impulsif untuk menggunakan uang.', 'Single: Kamulah yang menentukan seperti apa hidupmu, jangan sampai tuntutan orang lain membuatmu gegabah untuk mengambil keputusan dalam hubungan asmara. Jika kamu belum merasakan chemistry mungkin kalian butuh lebih banyak waktu untuk saling mengenal. Hubungan cinta yang dipaksakan bisa membawa ketidakbahagiaan bagi hidupmu termasuk orang di sekitarmu.\r\n\r\nCouple: Komunikasi adalah segalanya dalam hubungan, jadi gunakan kata-kata untuk mengungkapkan keinginanmu dan jangan memendamnya saja. Komunikasi yang baik adalah landasan penting sebuah hubungan. Meski sulit kamu harus berusaha untuk saling terbuka tentang apa pun. Menyembunyikan sesuatu mungkin dampaknya tak terasa dalam sehari atau dua hari, tapi lambat laun itu akan menjadi bom waktu yang bisa menghancurkan hubungan secara perlahan.'),
(9, 9, 'SAGITARIUS', 'Kamu sedang menyambut udara segar dalam perjalanan kariermu dan kamu butuh mindset yang positif. Dalam hal ini kamu sedang berharap bahwa semua yang akan dilalui akan mengalami keseimbangan. Dalam bisnis, kamu akan lebih menghargai pengalaman menantang yang memberimu pelajaran berharga. Meskipun semuanya tak berjalan dengan baik, tetapi kamu puas dengan kinerjamu.', 'Jangan sampai terjebak pada investasi yang tidak jelas, selalu hati-hati dalam transaksi keuangan, sebaiknya tetap prioritaskan keuanganmu untuk hal pokok terlebih dahulu.', 'Single: Hati-hati karena kamu terlalu mudah jatuh cinta. Kamu memang ingin menemukan pasangan yang tepat dan mendambakan mengenal seseorang secara pribadi. Tetapi keinginan untuk segera menemukan cinta jangan sampai membuatmu menjadi impulsif sehingga salah mengambil langkah.\r\n\r\nCouple: Dalam hubungan kamu mungkin merasa perhatian dari pasangan sangat berlebihan sehingga membuatmu tercekik dengan perlakuan itu. Pasanganmu mungkin merasa perlu melakukannya untuk menunjukkan kasih sayang, tapi jika kamu kurang nyaman dengan hal itu kamu harus bisa membicarakannya dengan baik-baik.'),
(10, 10, 'CARPICORN', 'Kamu terkadang merasa frustrasi saat usaha tak sebanding dengan pencapaian, tapi tetaplah optimis untuk hal-hal yang baik. Ini mungkin bukan pencapaian karier terbaikmu, tetapi jika terus menunjukkan usaha terbaik, suatu saat kamu akan menuai hasil yang baik pula. Begitu juga dalam bisnis, jangan patah semangat jika memiliki ide bagus untuk diperjuangkan. Kamu memang terkadag perlu melakukan hal-hal berisiko untuk keluar dari zona nyaman.', 'Pastikan kamu memenuhi diri dengan lebih banyak informasi sebelum membuat keputusan finansial. Jika ingin membuat rencana keuangan yang lebih besar, kamu juga perlu merubah cara mengatur keuanganmu terlebih dahulu.', 'Single: Jika ada kesempatan yang baik untuk mengenal seseorang, pastikan mendengar dengan seksama dan menanggapi dengan jujur selama percakapan. Saat kamu menunjukkan kejujuran, maka seseorang juga akan menunjukkan hal yang sama dan dirimu akan disukai dengan apa adanya.\r\n\r\nCouple: Mungkin pasangan sedang menunjukkan bahwa kamu tak kekurangan kasih sayang, sehingga memberikan perhatian dengan cara berbeda padamu. Namun ini bukan hal yang perlu dipermasalahkan sebagai masalah yang besar, karena justru sikap cuekmu bisa dilengkapi oleh pasangan dengan memberikan lebih banyak perhatian.'),
(11, 11, 'AQUARIUS', 'Meski belum punya dorongan ambisi untuk kariermu namun tetap picu semangat dan potensimu dalam pekerjaan. Meski tak ada perubahan signifikan dalam kariermu, kamu harus tetap menunjukkan usaha yang terbaik. Begitupun dalam bisnis, sebisa mungkin tunjukkan kemampuan terbaik dan tersetruktur agar lebih bersemangat agar kamu bisa mencapai target yang selama ini direncanakan.v', 'Kamu harus cerdas membagi keuangan pribadi dan keluarga agar tidak terjadi ketimpangan. Kamu mungkin merasa perlu membuat keuangan keluarga membaik tetapi jangan lupakan dirimu juga.', 'Single: Saat ini kamu belum tertarik menetapkan komitmen dengan siapa pun, yang jelas kamu hanya ingin kisah asmara yang menarik dan menyenangkan. Itu tandanya kamu memang belum siap menjalin hubungan asmara dalam waktu dekat, sebaiknya lakukan hal-hal penting yang ingin dicapai dalam hidupmu sebelum melakukan perubahan pada aspek yang lainnya.\r\n\r\nCouple: Kamu benar-benar merasa dicintai oleh pasangan, tetapi di sisi lain kamu juga merasa jatuh dalam hubungan yang hambar. Ini sebenarnya hanya masalah persepsi yang berbeda, dan satu-satunya cara ialah membuat kesepakatan dalam hubungan tentang apa yang boleh dan tidak boleh ditunjukkan. Dengan begitu, kalian akan nyaman menjalaninya.'),
(12, 12, 'PISCES', 'Meski belum punya dorongan ambisi untuk kariermu namun tetap picu semangat dan potensimu dalam pekerjaan. Meski tak ada perubahan signifikan dalam kariermu, kamu harus tetap menunjukkan usaha yang terbaik. Begitupun dalam bisnis, sebisa mungkin tunjukkan kemampuan terbaik dan tersetruktur agar lebih bersemangat agar kamu bisa mencapai target yang selama ini direncanakan.', 'Kamu harus cerdas membagi keuangan pribadi dan keluarga agar tidak terjadi ketimpangan. Kamu mungkin merasa perlu membuat keuangan keluarga membaik tetapi jangan lupakan dirimu juga.', 'Single: Saat ini kamu belum tertarik menetapkan komitmen dengan siapa pun, yang jelas kamu hanya ingin kisah asmara yang menarik dan menyenangkan. Itu tandanya kamu memang belum siap menjalin hubungan asmara dalam waktu dekat, sebaiknya lakukan hal-hal penting yang ingin dicapai dalam hidupmu sebelum melakukan perubahan pada aspek yang lainnya.\r\n\r\nCouple: Kamu benar-benar merasa dicintai oleh pasangan, tetapi di sisi lain kamu juga merasa jatuh dalam hubungan yang hambar. Ini sebenarnya hanya masalah persepsi yang berbeda, dan satu-satunya cara ialah membuat kesepakatan dalam hubungan tentang apa yang boleh dan tidak boleh ditunjukkan. Dengan begitu, kalian akan nyaman menjalaninya.');

-- --------------------------------------------------------

--
-- Table structure for table `zodiak`
--

CREATE TABLE `zodiak` (
  `id` int(11) NOT NULL,
  `id_zodiak` int(11) NOT NULL,
  `nama_zodiak` varchar(100) NOT NULL,
  `id_gallery` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `waktu_buat` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zodiak`
--

INSERT INTO `zodiak` (`id`, `id_zodiak`, `nama_zodiak`, `id_gallery`, `id_admin`, `waktu_buat`, `profile`) VALUES
(1, 1, 'ARIES', 4, 1, '2022-05-07 12:21:00', 'Lahir di tanggal 21 Maret sampai 19 April, adalah pemilik zodiak Aries. Aries memiliki lambang domba dan berelemen api. Sifat murah hati dari Aries sering kali menjadikannya sosok panutan. Meskipun memiliki sifat yang keras, Aries selalu rela untuk berkorban bagi orang terdekatnya. Tak hanya itu, karakter Aries yang mudah bergaul dengan banyak orang, membuatnya memiliki kesempatan untuk sukses yang tinggi. \r\n\r\nAries mampu berpikiran jernih, dapat menimbang segala persoalan dengan seadil mungkin dan juga mau mendengarkan saran dari orang lain. Sehingga dapat diharapkan untuk bisa menjadi orang besar dan terkenal jika tidak dihalang-halangi oleh pengaruh bintang-bintang lain yang sifatnya bertentangan.\r\n\r\nSifat positifnya Aries ini adalah murah hati dan ikhlas berkorban untuk kepentingan umum serta juga tidak takut tantangan.\r\n\r\nDalam pergaulan umum, Aries pandai bertutur kata menyampaikan hal-hal penting dan mudah menarik simpatik lawan bicara, tidak malu untuk mengakui kesalahannya hanya saja terkesan terlalu keras jika menegur kesalahan kawan ataupun sahabatnya.'),
(2, 2, 'TAURUS', 5, 1, '2022-05-07 12:26:50', 'Lahir di tanggal 20 April sampai 20 Mei ini adalah pemilik zodiak Taurus. Memiliki lambang Banteng atau Sapi Jantan. Taurus berelemen tanah. Taurus memiliki sifat yang cerdas dan memahami semua konsekuensi atas pilihan hidupnya. Taurus mudah marah, apabila kemarahannya memuncak maka jangan pernah mencoba menasehatinya karena justru Taurus semakin membencinya. Menjadi jurnalistik, pelukis, dan pekerjaan yang berhubungan dengan seni sangat cocok untuk Taurus. Taurus pembawaannya cerdas dan feelingnya kuat serta konsekuen, tujuannya hanya satu tidak bercabang-cabang. Kurang senang menabung namun suka beramal dan tidak takut untuk mengorbankan hartanya demi membantu sesama. Kesetiaannya boleh diuji dan dipercaya dan untuk melakukan segala sesuatunya selalu tulus dan tidak ada pamrih. Masih bisa tersenyum dan tertawa meskipun masalah setumpuk menimpa dirinya, karena yakin dan optimis kalau dirinya akan berubah kelak di kemudian hari.\r\n'),
(3, 3, 'GEMINI', 6, 1, '2022-05-07 12:29:59', 'Lahir di tanggal 21 Mei hingga 20 Juni adalah pemilik zodiak Gemini. Memiliki lambang saudara kembar dan elemen angin. Sifatnya yang tidak mudah ditebak, seringkali membuat bingung orang terdekatnya. Kecerdasan Gemini adalah daya tarik utama pemilik zodiak ini. Pesonanya yang menawan membuatnya banyak dikagumi oleh orang terdekatnya, meskipun sering bersikap kebalikannya di depan orang tersayangnya sekali pun. Gemini memiliki ciri tidak mudah puas dengan hidupnya, ia akan selalu mencari yang terbaik untuk dirinya. \r\n\r\nGemini mempunyai dua sifat yang kelihatannya saling bertentangan satu sama lain. Mempunyai keinginan merantau ke tempat yang jauh akan tetapi juga ingin tetap berkumpul bersama keluarga, ingin belajar tetapi juga ingin tetap bermain. Dapat tersenyum dalam duka yang sangat dalam sekalipun, merasa puas tetapi hatinya tetap tidak puas. Nampak cinta tetapi tidak mencintai, panas dan dingin biasanya berada pada waktu yang bersamaan.\r\n\r\nKelahiran Gemini suka tantangan sehingga tak heran jika banyak orang yang berpandangan Gemini suka bosan dan tidak tetap dalam satu pekerjaan, karena jika merasa kurang tantangan maka akan ditinggal pekerjaan tersebut.'),
(4, 4, 'CANCER', 7, 1, '2022-05-07 12:31:42', 'Lahir di tanggal 21 Juni hingga 21 Juli adalah pemilik zodiak Cancer. Lambang dari zodiak ini adalah kepiting. Sifat Cancer adalah memiliki welas asih yang tinggi. Ia rela melakukan apa saja agar orang terdekatnya bahagia. Gemar mengejar hal kecil dan mengabaikan hal-hal besar adalah ciri dari Cancer. Tak hanya itu, Cancer memiliki sifat yang setia. Ia sangat memedulikan pasangan dan keluarga. Kebahagiaan orang terdekatnya adalh sumber bahagianya. Cancer mempunyai sifat welas asih, dalam hidupnya selalu dinaungi oleh bintang penolong yang belum tentu dimiliki banyak orang. Hanya saja terkadang suka melepas hal yang besar demi mengejar hal yang kecil hanya untuk kepuasan batinnya semata. Jika sudah maunya ya maunya tidak ada yang bisa menghalangi atau mengganggu prinsipnya. Ada plus minusya, jika prinsipnya benar maka akan sukses besar, jika prinsipnya salah maka kerugian besar dan kejatuhan bisa menimpa dirinya.'),
(5, 5, 'LEO', 8, 1, '2022-05-07 12:34:36', 'Lahir di tanggal 22 Juli hingga 22 Agustus adalah pemilik zodiak Leo. Lambang zodiak Leo adalah singa dan berelemen api. Tak heran, Leo memiliki sifat yang suka memerintah. Ia tak segan marah kepada siapa saja yang menghalangi hidupnya. Bagi Leo memberi nasihat kepada orang lain adalah kesenangan baginya, meskipun belum tentu ia menjalaninya. Leo sangat cocok dijadikan seorang pemimpin, kemampuannya beradaptasi membuatnya bisa bekerja di berbagai bidang. Bagaikan singa, Leo suka memerintah, cepat marah dan berhati tetap, langkahnya cepat bagaikan api yang siap membakar siapa saja jika berani bermain-main dengannya. Budinya manis, pemurah dan ramah tamah, perasaan dan pikiran nya terang, banyak akalnya dan ahli strategi. Jika dapat kesempatan berkuasa maka akan mampu memberikan rasa nyaman kepada bawahannya dan mampu membawa kemajuan yang cukup besar terhadap apapun yang dia pimpin.'),
(6, 6, 'VIRGO', 9, 1, '2022-05-07 12:36:08', 'Lahir di tanggal 23 Agustus hingga 21 September adalah pemilik zodiak Virgo. Lambang zodiak Virgo adalah sang perawan dan memiliki elemen tanah. Sifat Virgo adalah penurut dan berhati lembut. Ia menyukai ketenangan. Ciri khas Virgo adalah sifat egois dan keras kepalanya. Ia selalu mengutamakan kepentingannya dan tidak peduli dengan orang lain. Meskipun demikian, Virgo sangat teliti dan bisa menyimpan rahasia dengan baik. Tak heran, Virgo adalah tujuan untuk teman terdekatnya saat butuh didengarkan. Virgo memiliki sifat sederhana dan sopan santun serta mengenal tata tertib. Berbudi halus dan suka menolong, segala apa yang dikerjakan telah melalui tahap pemikiran yang matang dan dikerjakan dengan tidak terburu nafsu. Pandai menyimpan rahasia dan tidak mudah terpancing dengan siapapun juga.\r\n\r\nKerjanya cepat dan rajin serta suka dengan ketenangan dan kedamaian alias tak suka dengan keributan dan pertentangan. Cepat melupakan dan memaafkan bila dirinya disakiti orang lain dan tidak ada niatan untuk membalasnya.'),
(7, 7, 'LIBRA', 10, 1, '2022-05-07 12:37:11', 'Lahir di tanggal 22 September 22 Oktober adalah pemilik zodiak Libra. Lambang zodiak Libra adalah timbangan dan berelemen udara. Timbangan mewakili sisi kehidupan yang seimbang, teratur, setara, dan adil. Ini sangat merepresentasikan pribadi Libra. Ia tahu cara menemukan keseimbangan dan harmoni dalam hidup. Dalam hal apapun, Libra akan selalu menjadi sosok yang seimbang dan melakukan hal sama rata. Selain itu, Libra juga dikenal sebagai penasihat yang baik. Libra rajin bekerja, berhati jujur dan berperasaan halus serta menyadari apa yang telah menjadi keputusannya. Amat suka spekulasi dan sangat berambisi. Pandai menarik simpati orang namun kurang bisa memeliharanya. Itu semua disebabkan oleh pikirannya yang tidak tetap karena sangat tertarik pada hal-hal yang baru. Bisa menangani pekerjaan dengan baik namun sayangnya tidak sampai tuntas alias ditinggal di tengah jalan.\r\n'),
(8, 8, 'SCORPIO', 11, 1, '2022-05-07 12:38:33', 'Scorpio lahir di tanggal 23 Oktober sampai 21 November. Lambang zodiak Scorpio adalah kalajengking dan memiliki elemen air. Sifat Scorpio dikenal sebagai sosok yang tekun, ambisius, dan pekerja keras. Ia juga sangat dermawan, rendah hati dan setia kawan. Karakter yang paling kuat dari Scorpio adalah intuisinya yang selalu tepat dan selalu mengikuti kata hati. Seorang Scorpio dapat dengan mudah membuat keputusan karena kekuatan instingnya ini. Pendirian Scorpio kuat dan berwibawa, sangat pendiam namun mempunyai pengaruh gaib yang luas. Kesehatan nya sempurna dan mempunyai kekuatan magnetisme yang membawa pengaruh kekuasaan yang besar dan mempunyai daya tarik yang luar biasa, membawa keberuntungan yang amat menyenangkan bagi siapa yang berada di sampingnya.\r\n\r\nBagi yang belum mengenal sifat asli Scorpio enggan untuk berkenalan namun begitu sudah berkenalan, akan merasakan uluran tangan Scorpio yang suka menolong bagaikan malaikat penolong. Pandai berbicara dan setiap kata memancarkan kekuatan penarik yang dapat menaklukkan hati bagi siapa saja yang mendengarkannya.'),
(9, 9, 'SAGITARIUS', 12, 1, '2022-05-07 12:40:22', 'Sagitarius lahir tanggal 22 November sampai 21 Desember. Sagitarius memiliki lambang pemanah dan berelemen api. Karakter Scorpio memiliki kepribadian yang bebas dan suka berpetualang. Sagitarius punya kemampuan membuat hal paling membosankan menjadi hal yang paling menyenangkan. Sisi kepribadian yang hangat membuat orang lain merasa nyaman saat di dekatnya. Sifat sagitarius yang paling hebat adalah menjunjung tinggi sebuah &quot;cinta&quot; dan suka menyelidiki sendiri serta hampir tidak pernah meleset dugaannya dikarenakan mempunyai perasaan yang amat tajam. Amat senang dan suka akan semua pekerjaan, tindak laku nya selalu berhati-hati sampai menuju kesuksesan. Semua kegagalan membuatnya semakin bangkit bersemangat dan menyadarkan dirinya.'),
(10, 10, 'CARPICORN', 13, 1, '2022-05-07 12:41:48', 'Lahir tanggal 22 Desember sampai 19 Januari adalah pemilik zodiak Capricorn. Ia memiliki lambang kambing laut dan elemen tanah. Karakter Capricorn sangat realistis dan berpikir kritis. Ciri utamanya adalah suka pekerja keras untuk mencapai tujuan hidupnya. Capricorn memiliki tekad yang kuat untuk melakukan segala sesuatu. Sekilas memang tampak angkuh tetapi bukan tanpa alasan orang memandang, karena zodiak Capricorn  selalu ingin maju ke depan dan pantang mundur. Ambisi atas kebesaran dan kekuasaan, sifatnya yang suka memerintah dan itu sudah dimulainya semenjak kecil sampai dewasa. Maka dari itu mulai kecil harus sudah dididik secara mandiri dan sederhana agar kelak di kemudian hari bisa menghargai orang  lain dan tidak tinggi hati.'),
(11, 11, 'AQUARIUS', 14, 1, '2022-05-07 14:13:12', 'Aquarius lahir tanggal 20 Januari sampai 18 Februari. Lambang Aquarius adalah penimbang air dan elemen angin. Ciri Aquarius adalah suka kebebasan dan tidak suka diatur, mereka memiliki banyak ide atau pikiran sendiri dalam menjalani sebuah kehidupan, karier, keluarga dan asmaranya. Karena sifat bebasnya ini, maka Aquarius memiliki pemikiran yang terbuka, wawasan yang luas dan bijaksana. Karakter Aquarius adalah penuh kharisma sehingga menarik kehidupan orang lain. Aquarius selalu ingin maju seperti tujuannya angin, bisa menjadi baik atau jelek tergantung pada pendidikannya. Maka dari itu pergaulan memegang peranan penting dalam kehidupan Aquarius, akan bisa berlaku halus dan sopan santun jika bergaul dalam pergaulan yang benar, tetapi akan sangat menakutkan jika masuk dalam pergaulan yang salah.\r\n\r\nAquarius terkenal dengan kepandaian dan kecerdasannya maka tak heran banyak orang kagum dengan kehebatannya dalam menyelesaikan urusan yang menurut orang lain sangatlah susah untuk diselesaikan. Zodiak Aquarius cepat sekali meniru apa saja yang dijumpainya, maka dari itu pendidikan dan pola asuh orangtua nya sangatlah pegang peranan untuk membentuk karakter yang kuat dalam diri zodiak Aquarius.'),
(12, 12, 'PISCES', 27, 1, '2022-05-07 12:45:13', 'Pisces lahir 19 Februari sampai 20 Maret. Pisces memiliki lambang ikan dan elemen air. Pisces memiliki ciri yang mudah terharu dan labil. Karakternya dikenal sebagai tanda yang yang cantik luar dan dalam. Pisces mudah sekali berempati, menempatkan dirinya di posisi orang lain sehingga ia bisa lebih memahami dan merasakan penderitaan orang lain. Seorang Pisces juga sangat kreatif, peka terhadap orang lain dan tidak pernah mementingkan dirinya sendiri. Pisces mempunyai sifat yang lembut dalam hatinya dan suka memberi pertolongan pada siapa saja yang membutuhka nya. Namun di balik jiwanya yang suka menolong ternyata zodiak Pisces ini terkadang balik membenci jika hatinya tak suka dan banyak orang yang tak mengetahuinya maka tak heran jika banyak orang yang tak menyangka bahwa Pisces bisa berperilaku seperti itu.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`,`id_admin`,`id_gallery`) USING BTREE;

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `minggu`
--
ALTER TABLE `minggu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zodiak`
--
ALTER TABLE `zodiak`
  ADD PRIMARY KEY (`id`,`id_zodiak`),
  ADD KEY `id_gallery` (`id_gallery`),
  ADD KEY `admin_id` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55555556;

--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `minggu`
--
ALTER TABLE `minggu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `zodiak`
--
ALTER TABLE `zodiak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `id_admin` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `zodiak`
--
ALTER TABLE `zodiak`
  ADD CONSTRAINT `admin_id` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `id_gallery` FOREIGN KEY (`id_gallery`) REFERENCES `gallery` (`id_gallery`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
