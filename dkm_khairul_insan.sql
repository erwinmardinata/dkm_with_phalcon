-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25 Mei 2016 pada 07.53
-- Versi Server: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dkm_khairul_insan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(220) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `date`) VALUES
(4, 'VISI & MISI', '<p><strong>VISI</strong></p>\r\n\r\n<p>MENCIPTAKAN KENYAMANAN DALAM BERIBADAH DAN BERDAKWAH DENGAN CARA <em>BIL HIKMAH</em> SESUAI DENGAN TUNTUNAN SYARIAH ISLAM</p>\r\n\r\n<p><strong>MISI</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Memakmurkan Masjid</p>\r\n	</li>\r\n	<li>\r\n	<p>Membuat program-progam untuk menyebarkan syiar Islam</p>\r\n	</li>\r\n	<li>\r\n	<p>Mempererat tali silaturahmi antar sesama muslim khususnya di lingkungan VMB dan kaum muslimin muslimat pada umumnya</p>\r\n	</li>\r\n</ol>\r\n', '2016-03-26 07:21:48'),
(5, 'STRUKTUR ORGANISASI', '<table border="1" cellpadding="0" style="height:753px; width:552px">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>1.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Penasehat</p>\r\n			</td>\r\n			<td colspan="2" style="width:310px">\r\n			<p>: Tras Budiantoro, Syaiful Bachri, M. Nasir Almi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>2.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Ketua</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Rohiman</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>3.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Wakil Ketua</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Pahlawan Rizal</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>4.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Koordinator Bidang Kemakmuran</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Taufany</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>5.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Koordinator Bidang Kesejahteraan</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Aep Gumiwa</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>6.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Bendahara</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Hendro</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>: Bambang Sugeng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>7.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Sekretaris</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Delfi</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>: Ferry Afit</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>8.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Peribadatan</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Edy Lukman</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>: Sutardji</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>9.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Dakwah dan Kajian Islam</p>\r\n			</td>\r\n			<td colspan="2" style="width:310px">\r\n			<p>: Sumanto, Bhery Priyo Hartanto, Ramos</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>10</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Pembinaan Anak dan Pemuda</p>\r\n			</td>\r\n			<td colspan="2" style="width:310px">\r\n			<p>: Fajar Budiman, Andri Fajria, Faiqoh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>11.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Rumah Tangga dan Perlengkapan</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Rismansyah</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>: Lukitanto Soepadi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>12.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Unit Usaha</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Adrial, Harlyono</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>: Sembada</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>13.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Sosial dan PHBI</p>\r\n			</td>\r\n			<td colspan="2" style="width:310px">\r\n			<p>: Iskandar Arie, Dedi Hermawan, Djoko Wiyono</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>14.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Informasi dan Komunikasi</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Arief MS.</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>: Sidi Asmono</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>15.</p>\r\n			</td>\r\n			<td style="width:228px">\r\n			<p>Majelis Ta&rsquo;lim Ar-Royan (MTA)</p>\r\n			</td>\r\n			<td style="width:155px">\r\n			<p>: Rositi</p>\r\n			</td>\r\n			<td style="width:154px">\r\n			<p>: Eva Latifah</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2016-03-26 08:52:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `content`, `cat_id`, `date`) VALUES
(8, 'Tauhid dan Rezeki', 'Pukul lima sore sudah lama berlalu. Maghrib memang masih belum waktunya. Sang artis terkenal itu bergegas menunaikan sholat Ashar. Ada perasaan bersalah yang susah payah ditepisnya. Tapi mau bagaimana lagi? Jadualnya memang padat.', '<p>Pukul lima sore sudah lama berlalu. Maghrib memang masih belum waktunya. Sang artis terkenal itu bergegas menunaikan sholat Ashar. Ada perasaan bersalah yang susah payah ditepisnya. Tapi mau bagaimana lagi? Jadualnya memang padat.</p>\r\n\r\n<p>Usai sholat, dia berniat berdoa. Bukan karena ada permohonan khusus, melainkan karena kebiasaan atau refeks saja. Namun ada SMS masuk ke telepon selulernya. Dari managernya. Ada order gede, dan dia diminta segera menemui si Bos. Sekarang, karena tidak ada waktu lagi, dan si Bos sangat sibuk. Sang artis dengan cepat memutuskan untuk membatalkan doanya, menuju kendaraan, dan memacunya. Ia tahu maghrib sudah menjelang. Namun ia memutuskan untuk &lsquo;lihat bagaimana nantilah!&rsquo;</p>\r\n\r\n<p>Di perjalanan, adzan berkumandang. Nuraninya pun menyapa lembut, namun gelisah. Begitu tinggikah penghargaannya kepada si Bos? Sebegitu tingginya sehingga mengalahkan penghargaannya kepada Sang Pemberi Rizki? Demikian gugat sang nurani. Perasaan bersalah mengaliri seluruh jiwanya. Ia tahu, ia harus berubah. Ia juga tahu, ia tidak boleh menunda. Akhirnya ia putuskan, jika bertemu Masjid terdekat ia akan berhenti. Bagaimana janji bertemu si Bos? Biarlah Allah yang mengurus rizkinya. Demikian pikir Sang Artis.</p>\r\n\r\n<p>Sang Artis menuturkan pengalaman ini kepada saya, yang mendengarkan dengan ta&rsquo;zim. Sebenarnya Saya jarang bertemu artis manapun, apalagi artis papan atas. Di sisi lain, Saya sendiri memang tidak pernah berkeinginan untuk bertemu artis manapun.</p>\r\n\r\n<p>Namun artis yang satu ini memang berbeda. Ia memiliki semangat untuk membantu syiar keIslaman. Walaupun belum sepenuhnya lepas dari kehidupan glamour, namun keinginannya untuk berbuat sesuatu terhadap Islam memancing simpati Saya.</p>\r\n\r\n<p>Akhirnya mereka bertemu. Sang artis bersedia memberikan sedikit tausyiah untuk remaja, dengan bayaran yang nyaris gratis untuk ukuran seorang artis. Dan Sang artis pun menceritakan salah satu pengalaman rohaninya, sebagaimana dikisahkan di awal tulisan ini.</p>\r\n\r\n<p>* * * * *</p>\r\n\r\n<p>&ldquo;Sebenarnya kisah Artis tadi adalah salah satu pelajaran tentang ketauhidan&rdquo;, demikian kata salah seorang Ustadz di Masjid tempat saya tinggal.</p>\r\n\r\n<p>&ldquo;Tauhid? Apakah benar sedalam itu, Ustadz?&rdquo; tanya saya keheranan.</p>\r\n\r\n<p>&ldquo;Ya, cerita tadi memang kecil dan sederhana, namun hakikatnya sungguh dalam. Cerita tadi adalah salah satu fragment tentang ketauhidan. Betapa tidak. Teori tauhid memang mengajarkan kita untuk meyakini bahwa hanya Allah Yang Maha Pemberi Rizki. Namun implementasi tauhid kita sering kali jauh dari itu.</p>\r\n\r\n<p>&ldquo;Kita masih lebih sering &lsquo;memohon&rsquo; kepada atasan atau manusia-manusia lain yang kita anggap dapat mengalirkan rizki kepada kita. Kita juga lebih takut kepada mereka. Juga lebih berharap. Di mata kita, mereka sangat berwibawa dan sangat patut dihormati.</p>\r\n\r\n<p>&ldquo;Untuk itu, kadang-kadang kita rela mengorbankan hal-hal yang sebenarnya prinsip. Menggeser-geser, bahkan meninggalkan sholat, hanya karena harus mengejar deadline tugas yang diberikan oleh si Bos, adalah contoh sederhana namun sering kita temui sehari-hari&rdquo;, demikian urai Sang Ustadz.</p>\r\n\r\n<p>&ldquo;Gejala lainnya adalah kita jadi sering malas berdoa, karena rasanya &lsquo;kurang konkret&rsquo;. Jauh lebih konkret bekerja dan &lsquo;memohon&rsquo; kepada orang-orang yang &lsquo;memberi&rsquo; rizki kepada kita.</p>\r\n\r\n<p>&ldquo;Sholat kita pun jadi kering. Kita tidak sungguh-sungguh merasakan kehadiran Allah di hadapan kita. Karena sebelum sholat kita tidak mempersiapkan jiwa untuk memohon dan meminta. Kita tidak menyiapkan proposal apapun ketika menghadap kepadaNya. Kenapa? Karena kita memang tidak sungguh-sungguh merasa menghadap kepadaNya.</p>\r\n\r\n<p>&ldquo;Bandingkan ketika kita membuat proposal <em>fund raising</em> atau pengumpulan dana kepada donatur atau sponsor. Kita menyiapkan segalanya dengan begitu rapih dan detail. Juga apik dan indah. Itu semua kita lakukan karena besarnya harapan kita terhadap pertolongan calon donatur atau sponsor tersebut. &rdquo; Sang Usatdz menjelaskan panjang lebar.</p>\r\n\r\n<p>&ldquo;Kadang-kadang, ketika kantor kita melakukan praktek kecurangan, loyalitas kita kepada kantor atau perusahaan tempat kita bekerja lebih kuat dari pada kepada Allah. &rdquo; Tandas Sang Ustadz.</p>\r\n\r\n<p>Saya dan beberapa jama&rsquo;ah lainnya manggut-manggut.</p>\r\n\r\n<p>&ldquo;Tapi bukankah Islam mengajarkan kita untuk bekerja profesional dan sungguh-sungguh?&rdquo; Salah seorang jamaah mencoba mengklarifikasi.</p>\r\n\r\n<p>&ldquo;Betul sekali. Profesional berarti bekerja sesuai standar dan etika profesi yang bersangkutan. Jika profesinya dokter, bekerjalah sesuai standar dan etika kedokteran. Demikian pula arsitek, teknisi, IT, guru, bahkan mungkin da&rsquo;i. Dan setahu saya, tak satu profesi pun yang mengajarkan kecurangan dan ketidaketisan&rdquo;, demikian penjelasan Sang Ustadz.</p>\r\n\r\n<p>&ldquo;Kadang-kadang, saya sengaja menunda waktu sholat, karena pekerjaan belum selesai. Saya merasa lebih profesional jika pekerjaan sudah selesai, baru mengerjakan sholat&rdquo;, orang tadi masih mencoba menjelaskan argumentasinya.</p>\r\n\r\n<p>Sang Ustadz tersenyum. Kemudian menjawab dengan tenang, &ldquo;Sebenarnya memang tergantung profesinya. Kalau profesi Anda adalah seorang dokter, apalagi dokter bedah, memang tidak bijaksana meninggalkan pasien dengan luka menganga. Walaupun sedapat mungkin kita menjadualkan pembedahan dengan perkiraan tidak melampaui waktu sholat. Namun terkadang hal itu memang sulit dilakukan.</p>\r\n\r\n<p>&ldquo;Ada pula profesi pemadam kebakaran, juga polisi yang sedang dalam operasi menangkap pelaku tindak kriminal. Namun itu semua adalah profesi khusus, sehingga memang perlu perlakuan khusus. Sedangkan yang saya maksud dalam penjelasan di atas adalah profesi yang umum, yaitu orang-orang dengan jadual kerja yang teratur. Jam masuk kantornya jelas, jam istirahatnya pasti, begitu pula jam pulangnya. &rdquo;</p>\r\n\r\n<p>&ldquo;Ustadz, adakah contoh lain selain menunda-nunda sholat?&rdquo; Tanya jama&rsquo;ah yang lain.</p>\r\n\r\n<p>&ldquo;Ada. Misalnya, enggan membayar zakat, apalagi infaq. Kita tahu, zakat itu sudah jelas ukurannya. Sedangkan infaq itu bebas besarnya. Nah, karena begitu takutnya kita akan kekurangan rizki, kita malas mengeluarkan zakat dan infaq. Tanda bahwa kita malas adalah kita ketika kita tidak menyediakan anggaran khusus atau rutin untuk kedua pos itu.</p>\r\n\r\n<p>&ldquo;Kita tidak begitu yakin dengan janji Allah, bahwa DIA akan mencukupi seluruh kebutuhan kita. Kita takut miskin karena berinfaq.</p>\r\n\r\n<p>&ldquo;Jadi, semuanya kembali berakar kepada ketauhidan&rdquo;, jelas Sang Ustadz.</p>\r\n\r\n<p>&ldquo;Nah, mulai sekarang, bersegeralah setiap kali ada SMS atau calling dari Allah, &rdquo; demikian Sang Ustadz mengakhiri penjelasannya, sambil tersenyum.</p>\r\n', 4, '2016-03-28 08:01:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_articles`
--

CREATE TABLE `category_articles` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category_articles`
--

INSERT INTO `category_articles` (`id`, `name`) VALUES
(8, 'FIQIH'),
(9, 'HADIST'),
(10, 'AL-QURAN'),
(11, 'AKHLAQ'),
(12, 'PARENTING');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `active` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `created_at`, `active`) VALUES
(1, 'erwinmardinata', 'erwin123', 'Erwin Mardinata', '537.mardinata@gmail.com', '2016-03-14 00:00:00', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_articles`
--
ALTER TABLE `category_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `category_articles`
--
ALTER TABLE `category_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
