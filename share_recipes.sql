-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2023 at 03:32 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `share_recipes`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `is_active`) VALUES
(1, 'Minang', 1),
(2, 'Jawa', 1),
(3, 'Aceh', 1),
(4, 'Manado', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `materials` text NOT NULL,
  `procedures` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT 'assets/img/thumb.jpg',
  `is_active` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `user_id`, `category_id`, `materials`, `procedures`, `thumbnail`, `is_active`) VALUES
(14, 'Mie Aceh', 7, 3, '<p>- 500 gr mie kuning<br>- 150 gr udang<br>- 100 gr daging sapi, potong kotak-kotak kecil<br>- 100 gr kol putih, iris<br>- 100 gr toge<br>- 1 buah tomat, potong memanjang<br>- 1 sdm kecap asin<br>- 2 batang daun bawang, iris halus<br>- 2 sdm kecap manis<br>- 4 siung bawang putih, iris<br>- 4 siung bawang merah, iris<br>- Garam secukupnya<br>- Kaldu jamur secukupnya<br>- 2 sdm minyak untuk menumis<br>- 1 sdt garam<br>- 1/2 sdt merica<br>- 1/4 sdt adas manis<br>- 2 buah kapulaga<br>- 2 buah kemiri<br>- 2 sdm bubuk kari india<br>- 3 siung bawang putih<br>- 5 buah cabai rawit<br>- 1 sdm minyak untuk menghaluskan bumbu<br>- Emping secukupnya<br>- Telur ceplok/dadar</p>', '<p>1. Haluskan semua bumbu lalu tambahkan sedikit minyak. Sisihkan.<br>2. Tumis bawang merah dan bawang putih, masukkan udang dan daging. Aduk hingga berubah warna.<br>3. Masukkan bumbu halus dan mie kuning, aduk rata.<br>4. Tambahkan tauge, kecap manis, garam dan kaldu jamur. Koreksi rasa. Angkat.<br>5. Sajikan dengan toping di atasnya.</p>', 'assets/thumbs/2023122414055665883ac4ccde2.jpg', 1),
(15, 'Ayam tangkap', 7, 3, '<p>- 500 gr daging ayam, potong-potong dan cuci bersih<br>- 1 lembar daun pandan, potong-potong<br>- 1 ruas lengkuas<br>- 2 lembar daun salam koja atau daun kari<br>- Air secukupnya<br>- 1 ruas jahe<br>- 1 ruas kunyit<br>- 1 sdt ketumbar<br>- 1 sdt merica butir<br>- 2 sdt garam/secukupnya<br>- 4 siung bawang putih<br>- 1 batang serai, memarkan dan potong-potong<br>- 3 lembar daun pandan agak besar, potong-potong<br>- 3 siung bawang merah, iris tipis<br>- 4 lembar daun kari<br>- 5 lembar daun jeruk<br>- 7 buah cabai hijau</p>', '<p>1. Campurkan ayam dengan bumbu halus. Masukkan lengkuas, daun pandan dan daun salam koja/kari.<br>2. Tuang air hingga ayam tenggelam. Aduk rata dan ungkep ayam hingga matang atau kurang lebih 30 menit. Aduk sesekali untuk melihat tingkat kematangannya.<br>3. Siapkan minyak goreng dan bumbu pelengkap. Goreng ayam ungkep bersama dengan bumbu pelengkap. Goreng hingga matang kecokelatan, angkat dan siap sajikan di piring.</p>', 'assets/thumbs/2023122414052265883aa25e78d.jpg', 1),
(16, 'Udang tumis Aceh', 7, 3, '<p>- 250 gr udang<br>- 1 buah kentang potong dadu<br>- 1 siung bawang merah<br>- 2 buah cabe hijau<br>- Air secukupnya<br>- Gula dan garam<br>- Minyak goreng<br>- 1 sdt Ketumbar<br>- 10 buah asam jawa<br>- 2 siung bawang putih<br>- 3 siung bawang merah<br>- 5 buah cabe rawit<br>- 8 buah cabe merah</p>', '<p>1. Bersihkan udang dan cuci hingga bersih.<br>2. Haluskan semua bumbu halus kemudian sisihkan.<br>3. Tumis bawang merah, cabe hijau dan bumbu halus hingga harum.<br>4. Masukkan kentang, aduk hingga matang.<br>5. Tambahkan air, aduk hingga mendidih. Masukkan udang, masak hingga matang. Sajikan.</p>', 'assets/thumbs/2023122414042765883a6b94872.jpg', 1),
(17, 'Pampis Tongkol', 9, 4, '<p>- 1 ekor ikan tongkol<br>- air jeruk nipis<br>- 2 batang serai, memarkan<br>- 5 lembar daun jeruk<br>- 2 lembar daun kunyit, iris halus<br>- 1 lembar daun pandan, ikat simpul<br>- 1 rantang daun kemangi petik<br>- 2 batang daun bawang, iris<br>- garam dan gula pasir secukupnya<br>- 20 butir bawang merah<br>- 8 siung bawang putih<br>- 20 buah cabai merah keriting<br>- 25 buah cabai rawit merah<br>- seruas kunyit<br>- seruas jahe</p>', '<ol><li>Bersihkan ikan tongkol, beri garam dan air jeruk nipis. Diamkan sebentar, kukus sampai matang. Suwir-suwir dagingnya. Sisihkan</li><li>Tumis bumbu halus bersama bumbu faun kecuali kemangi sampai harum. Beri garam dan gula secukupnya</li><li>Masukkan ikan tongkol suwir, aduk rata sampai bumbu meresap</li><li>Sebelum diangkat masukkan kemangi. Aduk sebentar. Sajikan.</li></ol>', 'assets/thumbs/2023122414034165883a3d73350.jpg', 1),
(18, 'Tenggiri Woku', 9, 4, '<p>- 7 potong ikan tenggiri<br>- 1 sdm air jeruk nipis<br>- 6 lembar daun jeruk<br>- 1 lembar daun pandan, simpul<br>- 1 tomat potong-potong<br>- 1 lembar daun kunyit muda, iris halus<br>- 3 batang daun bawang iris kasar<br>- 1 batang serai memarkan<br>- 10 butir cabai rawit merah utuh<br>- 3 genggam kemangi<br>- garam<br>- gula<br>- air secukupnya<br>- 10 butir bawang merah<br>- 4 siung bawang putih<br>- 5 cabai merah kriting<br>- 10 cabai rawit merah<br>- 1 seruas jempol jahe<br>- 1 ruas kunyit</p>', '<ol><li>Bersikah ikan, balur jeruk nipis, garam. Goreng sebentar saja</li><li>Tumis bumbu halus, serai, daun jeruk, kunyit, bawang, pandan, dan cabai rawit utuh hingga harum</li><li>Masukkan ikan, aduk rata, tambah tomat, garam, gula, dan air</li><li>Masak sampai bumbu meresap, cicipi rasa. Sesaat sebelum diangkat beri kemangi.</li><li>Aduk sebentar saja, kemudian angkat dan sajikan.</li></ol>', 'assets/thumbs/20231224140231658839f724c98.jpg', 1),
(19, 'Ayam woku', 9, 4, '<p>- 1,5 kg ayam negeri<br>- 1 1/2 sachet kaldu ayam<br>- 3 ikat daun kemangi<br>- 1 lembar daun kunyit<br>- 3 lembar daun salam<br>- 3 lembar daun jeruk<br>- irisan daun bawang<br>- 1 lembar daun pandan<br>- 4-5 jeruk nipis<br>- 1-2 buah tomat/diganti cuka secukupnya<br>- minyak goreng untuk tumis<br>- air 3-4 cup<br>- 4-5 rawit utuh<br>- 6 butir bawang merah<br>- 6 siung bawang putih<br>- 4-5 batang cabai merah besar<br>- 5-6 batang cabai merah keriting<br>- 10-15 cabai rawit hijau/merah/oranye<br>- 5-6 butir kemiri<br>- 1/2 batang jahe<br>- 1 batang kunyit<br>- garam dan gula pasir secukupnya</p>', '<ol><li>Cuci bersih ayam, lalu balur dan rendam ayam dengan jeruk nipis dan garam</li><li>Tumis bumbu halus sampai harum lalu masukkan daun kunyit, daun salam, daun bawang, daun jeruk, daun pandan dan cabai rawit utuh hingga harum</li><li>Masukkan ayam, aduk rata agar semua bumbunya larut</li><li>Rebus sebentar, aduk sesekali biar rata semua. Masukkan garam, gula pasir, kaldu bubuk, rebus sampai air menyusut</li><li>Jika sudah matang, masukkan daun kemangi dan aduk rata</li><li>Masak sebentar dan sajikan.</li></ol>', 'assets/thumbs/20231224140128658839b8cfa2b.jpg', 1),
(20, ' Gudeg', 11, 2, '<p>- 1 kg nangka muda, potong kotak lalu rebus sebentar dengan sedikit garam, angkat, tiriskan<br>- 400 gram gula merah, sisir<br>- 4 batang serai, geprek<br>- 4 ruas lengkuas, geprek<br>- 5 lembar daun salam<br>- 4 lembar daun jeruk<br>- 1 liter santan cair<br>- 700 ml air kelapa<br>- 1 liter santan kental<br>- Garam secukupnya<br>- 3 lembar daun jati<br>- Telur rebus<br>- 100 gram bawang merah<br>- 10 siung bawang putih<br>- 8 butir kemiri sangrai<br>- 20 gram ketumbar bubuk</p>', '<p>1. Tata daun jati di dasar panci, lalu masukkan nangka muda dan semua bumbu. Tuang santan cair dan juga air kelapa. Kemudian tutup kembali dengan daun jati dan tutup panci, masak hingga kuah sedikit menyusut.<br>2. Setelah kuah sedikit menyusut tambahkan gula merah, garam, dan santan kental. Tutup kembali dengan daun jati dan tutup panci, lanjutkan memasak dengan api kecil.<br>3. Koreksi rasa. Terakhir tambahkan telur rebus, kemudian tutup panci kembali, lanjut masak gudegnya hingga matang dan benar-benar kering selama 8-10 jam.<br>4. Sajikan.</p>', 'assets/thumbs/20231224140035658839838bde8.jpg', 1),
(21, 'Getuk', 11, 2, '<p>- 1 kg singkong, kupas cuci lalu potong-potong<br>- 150 gram kelapa parut<br>- 100 gram gula pasir<br>- Pewarna makanan<br>- 1 sdt garam<br>- Secukupnya kelapa parut + sejumput garam lalu kukus sebentar</p>', '<p>1. Panaskan kukusan.<br>2. Kukus singkong bersama 150 gram kelapa parut hingga matang, kira-kira selama 30 menit.<br>3. Angkat dan pindahkan dalam wadah yang cukup besar, lalu taburi 1 sdt garam dan 100 gram gula pasir. Aduk rata.<br>4. Siapkan alat penggiling singkong. Giling sedikit-sedikit hingga habis.<br>5. Bagi menjadi 3 bagian. Beri pewarna sesuai selera.<br>6. Kemudian giling lagi bentuk panjang, tata di piring dan siap disajikan bersama kelapa parut.</p>', 'assets/thumbs/2023122413592865883940211d3.jpg', 1),
(22, 'Oseng mercon', 11, 2, '<p>- 500 gram daging sapi campur tetelan<br>- 1 batang serai geprek<br>- 2 lembar daun jeruk<br>- 2 lembar daun salam<br>- 15 buah cabai rawit utuh<br>- 2 sdm air asam Jawa<br>- 2 sdm gula merah sisir<br>- Garam dan penyedap rasa kaldu sapi secukupnya<br>- Gula pasir sesuai selera.<br>- 10 buah cabai rawit merah<br>- 5 buah cabai merah keriting<br>- 2 buah cabai merah besar<br>- 8 siung bawang merah<br>- 4 siung bawang putih<br>- 2 ruas jahe<br>- 2 butir kemiri</p>', '<p>1. Cuci bersih daging sapi dan tetelan, rebus sekitar 1 jam.<br>2. Saat merebus tambahkan daun jeruk.<br>3. Angkat daging sapi dari air kaldunya, potong-potong sesuai selera.<br>4. Tumis bumbu halus hingga harum, masukkan bumbu cemplung kecuali cabai rawit utuh.<br>5. Masukkan irisan daging sapi, aduk, tambahkan air rebusannya, bila kurang airnya bisa ditambahkan lagi.<br>6. Biarkan hingga mendidih.<br>7. Setelah mendidih, tambahkan garam, kaldu sapi, gula merah dan gula pasir.<br>8. Tambahkan pula air asam Jawa.<br>9. Terakhir masukkan cabai rawit utuh.<br>10. Setelah dagingnya empuk dan airnya sedikit menyusut, tes rasa, angkat dan sajikan.</p>', 'assets/thumbs/202312241358476588391702145.jpg', 1),
(23, 'Rendang daging', 10, 1, '<p>- 1 kg daging sapi<br>- Baby kentang<br>- 2 lembar daun kunyit<br>- 1 batang sereh<br>- 4 lembar daun jeruk<br>- 1 lembar daun salam<br>- 1 sdm ambu2 (boleh skip)<br>- 1 ons cabai giling halus<br>- 1 kg santan kental<br>- 10 bawang merah ukuran besar<br>- 5 bawang putih<br>- Jahe (sebesar ibu jari)<br>- Lengkuas muda (sebesar ibu jari)<br>- 1 paket rempah gulai/rendang (ketumbar, kapulaga, bunga pekak, cengkeh, kayu manis dan buah pala)<br>- Garam (sesuai selera)</p>', '<p>1.Masukkan semua bahan dalam satu wajan/kuali kecuali daging, kentang dan ambu-ambu (kelapa kering khas masakan Padang).<br>2.Aduk sebentar hingga santan sedikit mendidih.<br>3.Masukkan daging dan ambu-ambu.<br>4.Jika rendang sudah meletup-letup, masukan kentang.<br>5.Aduk lagi hingga rendang tanak (mengeluarkan minyak) dan rendang menghitam.</p>', 'assets/thumbs/20231224135802658838ea1d11d.jpg', 1),
(24, 'Gulai daun singkong', 10, 1, '<p>- Daun singkong direbus dan peras, lalu potong-potong<br>- Daun salam<br>- Lengkuas<br>- Serei<br>- Rawit utuh<br>- Udang kering<br>- Teri Medan<br>- Santan<br>- Bawang merah<br>- Bawang putih<br>- Cabai merah<br>- Terasi<br>- Kunyit<br>- Kemiri</p>', '<p>1. Tumis bumbu halus sampai wangi, baru masukkan ebi aduk, tuang santan encer masukkan daun singkong, penyedap rasa kalau Sudah mendidih.<br>2.Masukkan santan kental, kecilkan api, aduk terus jangan sampai pecah santannya, aduk sampai mendidih, matikan api dan angkat.</p>', 'assets/thumbs/20231224135726658838c6442cc.jpg', 1),
(25, 'Balado jengkol', 10, 1, '<p>- 250 gr jengkol, belah dua<br>- 2 buah kentang kupas, potong-potong<br>- 50 gr teri<br>- 1 buah tomat, iris<br>- Minyak dan garam secukupnya<br>- 100 gr cabai keriting<br>- 5 buah cabai rawit<br>- 7 siung bawang merah</p>', '<p>1.Goreng kentang sampai matang lalu tiriskan.<br>2.Goreng jengkol, lalu masukkan ke mangkok berisi air kemudian tiriskan lalu geprek.<br>3.Goreng teri sampai matang, tiriskan.<br>4.Tumis bumbu halus dan tomat sampai matang, beri garam secukupnya.<br>5.Icip rasa, matikan api. Tuang bahan-bahan yang sudah digoreng ke tumisan cabai. Aduk rata.<br>6.Sajikan dengan nasi hangat.</p>', 'assets/thumbs/20231224135602658838727d447.jpg', 1),
(26, 'Nama_resep', 2, 1, '<p>Bahan 1</p><p>Bahan 2</p>', '<p>Langkah 1</p><p>Langkah 2</p>', 'assets/thumbs/20231224145237658845b5834a3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_admin` tinyint NOT NULL DEFAULT '0',
  `is_active` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `photo`, `is_admin`, `is_active`) VALUES
(1, 'Yunus Febriansyah', 'yunusaja', '$2y$10$NDCAN8XhluvdmWaaZJj27OF929401ZfVSRSwjsM2savNE3Cy/6Zi2', NULL, 1, 1),
(2, 'Mbak Siti', 'siti', '$2y$10$EQB4XnHv3YsDjY.RJ73tnOfX5e87.NLy2cq6K8Xj1J7kK7NexpjbG', NULL, 0, 1),
(3, 'Pak Budi', 'budi', '$2y$10$eCwHkpXzu4uMl/dyBsWSU.An1B2o/.T9JNEUlBb/tXVi9QnJefshi', NULL, 0, 1),
(4, 'Susan', 'susan', '$2y$10$XZpimk/b7OnZGNmx48.Rfu7U7uq8GhFoVWxik4RTw1z1oEDv/EigO', NULL, 0, 1),
(5, 'Rendi', 'rendi', '$2y$10$jsgcreTpeks90ZLPjHTqnuLZDaJYBGi1CS14NhU54Ui2URkaWSSX6', NULL, 0, 1),
(6, 'Wati', 'wati', '$2y$10$vxaL4nZJZJWpKxRID5c.kO8jqhdBHVw0Ho5t2UcbXWdwJiQiR2RlS', NULL, 0, 1),
(7, 'Andrian Fakhruza ', 'afakhruza', '$2y$10$as2yc.JR4uCBONkX.HNZLOQdMlHyEMto8Dd5pg8EdgypIq2EwW3pu', NULL, 0, 1),
(9, 'Vidya Ayuningtyas', 'vidya', '$2y$10$C/63mtQPC0wyr2pT.LAomeNJ.shihiGGJHMsm0TDEesVoG37D6qL6', NULL, 0, 1),
(10, 'Billa', 'billa', '$2y$10$UlKq9nacxiLAJ4ODFJ0PbubgWid6W59iLJ8HsCyaD7R7UfegJIl2W', NULL, 0, 1),
(11, 'Fachrul Rozi', 'rozi', '$2y$10$zlMDg1kPYj.oDJabBTDu/u6kkWxQUqm6XwlokIwH5MXf5BCuNYXSu', NULL, 0, 1),
(12, 'Andrian Fakhruza ', 'afakhruza1', '$2y$10$r9H5YPKdmmgdiBYsWSteDeJhLwBUXbfjqbpyl0L2PejfKN7Bj7NEa', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_recipes`
-- (See below for the actual view)
--
CREATE TABLE `vw_recipes` (
`id` int
,`title` varchar(255)
,`user_id` int
,`user_name` varchar(255)
,`user_username` varchar(255)
,`category_id` int
,`category_name` varchar(255)
,`materials` text
,`procedures` text
,`thumbnail` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_recipes`
--
DROP TABLE IF EXISTS `vw_recipes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_recipes`  AS SELECT `recipes`.`id` AS `id`, `recipes`.`title` AS `title`, `recipes`.`user_id` AS `user_id`, `users`.`name` AS `user_name`, `users`.`username` AS `user_username`, `recipes`.`category_id` AS `category_id`, `categories`.`name` AS `category_name`, `recipes`.`materials` AS `materials`, `recipes`.`procedures` AS `procedures`, `recipes`.`thumbnail` AS `thumbnail` FROM ((`recipes` join `users` on((`recipes`.`user_id` = `users`.`id`))) join `categories` on((`recipes`.`category_id` = `categories`.`id`))) WHERE ((`recipes`.`is_active` = 1) AND (`categories`.`is_active` = 1) AND (`users`.`is_active` = 1)) ORDER BY `recipes`.`id` DESC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `recipes_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
