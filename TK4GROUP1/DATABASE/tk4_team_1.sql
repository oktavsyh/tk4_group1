-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
-- Host: 127.0.0.1
-- Generation Time: 05 Feb 2023 pada 07.16
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: `tk4_team_1`

-- --------------------------------------------------------

-- Struktur dari tabel `barang`

CREATE TABLE `barang` (
  `IdBarang` int(11) NOT NULL,
  `NamaBarang` varchar(255) NOT NULL,
  `Keterangan` varchar(255) NOT NULL,
  `Satuan` int(11) DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data untuk tabel `barang`

INSERT INTO `barang` (`IdBarang`,`NamaBarang`, `Keterangan`, `Satuan`, `IdPengguna`) VALUES
(1, 'Laptop ASUS', 'Laptop dengan spesifikasi tinggi', 25, NULL),
(2, 'Smartphone Samsung Galaxy S21', 'Smartphone canggih dengan kamera unggul', 35, NULL),
(3, 'Printer Epson L3150', 'Printer all-in-one dengan fitur cetak berkualitas tinggi', 10, NULL),
(4, 'Kamera Canon EOS 80D', 'Kamera DSLR untuk fotografi profesional', 40, NULL),
(5, 'Smart TV LG 55UJ6300', 'Smart TV dengan layar 4K dan teknologi OLED', 15, NULL),
(6, 'Mesin Cuci Samsung Front Load', 'Mesin cuci dengan kapasitas besar dan teknologi canggih', 10, NULL),
(7, 'AC Panasonic Inverter', 'AC dengan teknologi inverter untuk efisiensi energi', 25, NULL),
(8, 'Refrigerator Sharp 4-Door', 'Kulkas 4 pintu dengan teknologi pendingin terkini', 10, NULL),
(9, 'Microwave Oven Toshiba', 'Microwave oven dengan berbagai fitur memasak', 35, NULL),
(10, 'Blender Philips HR2102', 'Blender dengan desain ergonomis dan daya tahan tinggi', 65, NULL),
(11, 'Vacuum Cleaner Dyson V11', 'Vacuum cleaner tanpa kabel dengan teknologi canggih', 15, NULL),
(12, 'Water Dispenser Miyako', 'Water dispenser dengan pendingin dan pemanas air', 25, NULL),
(13, 'Rice Cooker Panasonic', 'Rice cooker otomatis untuk masak nasi praktis', 35, NULL),
(14, 'Toaster Oven Black & Decker', 'Toaster oven dengan fitur pemanggangan yang serbaguna', 25, NULL),
(15, 'Stand Fan Cosmos', 'Kipas angin berdiri dengan 3 level kecepatan', 15, NULL),
(16, 'Soundbar Sony HT-X8500', 'Soundbar dengan suara berkualitas tinggi dan teknologi Dolby Atmos', 20, NULL),
(17, 'Gaming Chair DXRacer', 'Kursi gaming ergonomis untuk kenyamanan maksimal', 35, NULL),
(18, 'Desk Lamp Philips LED', 'Lampu meja dengan teknologi LED hemat energi', 40, NULL),
(19, 'External Hard Drive Seagate 2TB', 'Hard drive eksternal dengan kapasitas penyimpanan besar', 25, NULL),
(20, 'Wireless Mouse Logitech MX Master', 'Mouse nirkabel dengan desain ergonomis dan sensor presisi tinggi', 30, NULL);


-- --------------------------------------------------------

-- Struktur dari tabel `hakakses`

CREATE TABLE `hakakses` (
  `IdAkses` int(11) NOT NULL,
  `NamaAkses` varchar(255) NOT NULL,
  `Keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data untuk tabel `hakakses`

INSERT INTO `hakakses` (`IdAkses`, `NamaAkses`, `Keterangan`) VALUES
(1, 'Admin', 'Hak akses penuh'),
(2, 'Pegawai', 'Hak akses terbatas untuk pegawai'),
(3, 'Manajer', 'Hak akses tingkat manajerial'),
(4, 'Pelanggan', 'Hak akses untuk pelanggan'),
(5, 'Gudang', 'Hak akses untuk bagian gudang'),
(6, 'Marketing', 'Hak akses untuk bagian pemasaran'),
(7, 'Keuangan', 'Hak akses untuk bagian keuangan'),
(8, 'Teknisi', 'Hak akses untuk teknisi'),
(9, 'Customer Service', 'Hak akses untuk customer service'),
(10, 'Supervisor', 'Hak akses supervisor'),
(11, 'Logistik', 'Hak akses untuk bagian logistik'),
(12, 'HRD', 'Hak akses untuk bagian sumber daya manusia'),
(13, 'QA/QC', 'Hak akses untuk Quality Assurance/Quality Control'),
(14, 'Pemasok', 'Hak akses untuk pemasok barang'),
(15, 'Pengawas Produksi', 'Hak akses pengawas produksi'),
(16, 'Teknikal Support', 'Hak akses untuk dukungan teknis'),
(17, 'Pengembangan Produk', 'Hak akses untuk pengembangan produk'),
(18, 'Suplai Rantai', 'Hak akses untuk manajemen rantai pasok'),
(19, 'Desain Grafis', 'Hak akses untuk desain grafis'),
(20, 'Analisis Data', 'Hak akses untuk analisis data');


-- --------------------------------------------------------

-- Struktur dari tabel `pelanggan`

CREATE TABLE `pelanggan` (
  `IdPelanggan` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `NoTelp` varchar(255) NOT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data untuk tabel `pelanggan`
INSERT INTO `pelanggan` (`IdPelanggan`, `NamaPelanggan`, `NoTelp`, `IdPengguna`) VALUES
(1, 'John Doe', '081398720620', NULL),
(2, 'Jane Doe', '081398720621', NULL),
(3, 'Bob Smith', '081398720622', NULL),
(4, 'Alice Johnson', '081398720623', NULL),
(5, 'Charlie Brown', '081398720624', NULL),
(6, 'David Lee', '081398720625', NULL),
(7, 'Emma Williams', '081398720626', NULL),
(8, 'Frank Taylor', '081398720627', NULL),
(9, 'Grace Miller', '081398720628', NULL),
(10, 'Henry Wilson', '081398720629', NULL),
(11, 'Isabel Harris', '081398720630', NULL),
(12, 'Jack Martin', '081398720631', NULL),
(13, 'Katherine Moore', '081398720632', NULL),
(14, 'Leo Jones', '081398720633', NULL),
(15, 'Mia Johnson', '081398720634', NULL),
(16, 'Nathan Davis', '081398720635', NULL),
(17, 'Olivia Clark', '081398720636', NULL),
(18, 'Paul Smith', '081398720637', NULL),
(19, 'Quincy White', '081398720638', NULL),
(20, 'Rachel Wilson', '081398720639', NULL);



-- --------------------------------------------------------

-- Struktur dari tabel `pembelian`

CREATE TABLE `pembelian` (
  `IdPembelian` int(11) NOT NULL,
  `JumlahPembelian` int(11) DEFAULT NULL,
  `HargaBeli` int(11) DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data untuk tabel `pembelian`

INSERT INTO `pembelian` (`IdPembelian`, `JumlahPembelian`, `HargaBeli`, `IdPengguna`) VALUES
(1, 100, 5000000, 1),
(2, 150, 7500000, 2),
(3, 80, 4000000, 3),
(4, 120, 6000000, 4),
(5, 90, 4500000, 5),
(6, 110, 5500000, 1),
(7, 200, 1000000, 2),
(8, 90, 4500000, 3),
(9, 160, 8000000, 4),
(10, 110, 5500000, 5),
(11, 140, 7000000, 1),
(12, 130, 6500000, 2),
(13, 110, 5500000, 3),
(14, 140, 7000000, 4),
(15, 120, 6000000, 5),
(16, 80, 4000000, 1),
(17, 170, 8500000, 2),
(18, 125, 6250000, 3),
(19, 95, 4750000, 4),
(20, 150, 7500000, 5);


-- --------------------------------------------------------

-- Struktur dari tabel `pengguna` 

CREATE TABLE `pengguna` (
  `IdPengguna` int(11) NOT NULL,
  `NamaPengguna` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `NamaDepan` varchar(255) NOT NULL,
  `NamaBelakang` varchar(255) NOT NULL,
  `NoHp` int(11) DEFAULT NULL,
  `Alamat` text,
  `IdAkses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data untuk tabel `pengguna`

INSERT INTO `pengguna` (`IdPengguna`, `NamaPengguna`, `Password`, `NamaDepan`, `NamaBelakang`, `NoHp`, `Alamat`, `IdAkses`) VALUES
  (1, 'agus_setiawan', 'password123', 'Agus', 'Setiawan', 81234567890, 'Jl. Cendrawasih No. 12, Jakarta', 1),
  (2, 'siti_rachmawati', 'pass456', 'Siti', 'Rachmawati', 82345678901, 'Jl. Kenanga No. 45, Bandung', 2),
  (3, 'budi_santoso', 'securepass', 'Budi', 'Santoso', 83456789012, 'Jl. Mawar No. 78, Surabaya', 3),
  (4, 'dewi_kusumawati', 'dewipass', 'Dewi', 'Kusumawati', 84567890123, 'Jl. Anggrek No. 34, Yogyakarta', 1),
  (5, 'aditya_wijaya', 'wijayapass', 'Aditya', 'Wijaya', 85678901234, 'Jl. Padi No. 56, Semarang', 2),
  (6, 'rini_saputri', 'rinipass', 'Rini', 'Saputri', 86789012345, 'Jl. Melati No. 67, Medan', 3),
  (7, 'surya_putra', 'surypass', 'Surya', 'Putra', 87890123456, 'Jl. Dahlia No. 78, Palembang', 1),
  (8, 'novi_purnama', 'novipass', 'Novi', 'Purnama', 88901234567, 'Jl. Teratai No. 89, Makassar', 2),
  (9, 'rifki_julianto', 'rifkipass', 'Rifki', 'Julianto', 89012345678, 'Jl. Kamboja No. 90, Balikpapan', 3),
  (10, 'lisa_melati', 'lisapass', 'Lisa', 'Melati', 89765432109, 'Jl. Anggrek No. 45, Denpasar', 1),
  (11, 'rama_pangestu', 'ramapass', 'Rama', 'Pangestu', 89876543210, 'Jl. Kenari No. 23, Malang', 2),
  (12, 'anita_sari', 'anitapass', 'Anita', 'Sari', 89987654321, 'Jl. Cempaka No. 12, Samarinda', 3),
  (13, 'arif_widodo', 'arifpass', 'Arif', 'Widodo', 89098765432, 'Jl. Dahlia No. 56, Padang', 1),
  (14, 'linda_susanto', 'lindapass', 'Linda', 'Susanto', 89109876543, 'Jl. Mawar No. 78, Pontianak', 2),
  (15, 'anto_rahman', 'antopass', 'Anto', 'Rahman', 89210987654, 'Jl. Teratai No. 34, Manado', 3),
  (16, 'desi_rahayu', 'desipass', 'Desi', 'Rahayu', 89321098765, 'Jl. Padi No. 23, Mataram', 1),
  (17, 'agus_saputra', 'aguspass', 'Agus', 'Saputra', 89432109876, 'Jl. Anggrek No. 45, Batam', 2),
  (18, 'nova_hidayat', 'novapass', 'Nova', 'Hidayat', 89543210987, 'Jl. Kenanga No. 67, Jayapura', 3),
  (19, 'yuni_wijaya', 'yunipass', 'Yuni', 'Wijaya', 89654321098, 'Jl. Mawar No. 89, Ternate', 1),
  (20, 'agus_susanto', 'aguspass', 'Agus', 'Susanto', 89765432109, 'Jl. Dahlia No. 45, Ambon', 2);


-- --------------------------------------------------------

-- Struktur dari tabel `penjualan`

CREATE TABLE `penjualan` (
  `IdPenjualan` int(11) NOT NULL,
  `JumlahPenjualan` int(11) DEFAULT NULL,
  `HargaJual` int(11) DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data untuk tabel `penjualan`

INSERT INTO `penjualan` (`IdPenjualan`, `JumlahPenjualan`, `HargaJual`, `IdPengguna`)
VALUES
(1, 100, 5500000, 1),
(2, 150, 8500000, 2),
(3, 80, 4500000, 3),
(4, 120, 6500000, 4),
(5, 90, 5500000, 5),
(6, 110, 6500000, 1),
(7, 200, 1500000, 2),
(8, 90, 5500000, 3),
(9, 160, 8500000, 4),
(10, 110, 6500000, 5),
(11, 140, 7500000, 1),
(12, 130, 7500000, 2),
(13, 110, 6500000, 3),
(14, 140, 8000000, 4),
(15, 120, 7000000, 5),
(16, 80, 5000000, 1),
(17, 170, 9500000, 2),
(18, 125, 7250000, 3),
(19, 95, 5750000, 4),
(20, 150, 8500000, 5);


-- --------------------------------------------------------

-- Struktur dari tabel `suplier`

CREATE TABLE `suplier` (
  `IdSuplier` int(11) NOT NULL,
  `NamaSuplier` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data untuk tabel `suplier`

INSERT INTO `suplier` (`IdSuplier`, `NamaSuplier`, `Alamat`, `IdPengguna`) VALUES
  (1, 'Supplier A', 'Jl. ABC No. 123', NULL),
  (2, 'Supplier B', 'Jl. XYZ No. 456', NULL),
  (3, 'Supplier C', 'Jl. MNO No. 789', NULL),
  (4, 'Supplier D', 'Jl. PQR No. 012', NULL),
  (5, 'Supplier E', 'Jl. UVW No. 345', NULL),
  (6, 'Supplier F', 'Jl. GHI No. 678', NULL),
  (7, 'Supplier G', 'Jl. JKL No. 901', NULL),
  (8, 'Supplier H', 'Jl. DEF No. 234', NULL),
  (9, 'Supplier I', 'Jl. STU No. 567', NULL),
  (10, 'Supplier J', 'Jl. VWX No. 890', NULL),
  (11, 'Supplier K', 'Jl. YZA No. 123', NULL),
  (12, 'Supplier L', 'Jl. BCD No. 456', NULL),
  (13, 'Supplier M', 'Jl. EFG No. 789', NULL),
  (14, 'Supplier N', 'Jl. HIJ No. 012', NULL),
  (15, 'Supplier O', 'Jl. KLM No. 345', NULL),
  (16, 'Supplier P', 'Jl. QRS No. 678', NULL),
  (17, 'Supplier Q', 'Jl. TUV No. 901', NULL),
  (18, 'Supplier R', 'Jl. WXY No. 234', NULL),
  (19, 'Supplier S', 'Jl. ZAB No. 567', NULL),
  (20, 'Supplier T', 'Jl. CDE No. 890', NULL);

-- Indexes for dumped tables

-- Indexes for table `barang`

ALTER TABLE `barang`
  ADD PRIMARY KEY (`IdBarang`),
  ADD KEY `IdPengguna` (`IdPengguna`);

-- Indexes for table `hakakses`

ALTER TABLE `hakakses`
  ADD PRIMARY KEY (`IdAkses`);

-- Indexes for table `pelanggan`

ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`IdPelanggan`),
  ADD KEY `IdPengguna` (`IdPengguna`);

-- Indexes for table `pembelian`

ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`IdPembelian`),
  ADD KEY `IdPengguna` (`IdPengguna`);

-- Indexes for table `pengguna`

ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`IdPengguna`),
  ADD KEY `IdAkses` (`IdAkses`);

-- Indexes for table `penjualan`

ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`IdPenjualan`),
  ADD KEY `IdPengguna` (`IdPengguna`);

-- Indexes for table `suplier`

ALTER TABLE `suplier`
  ADD PRIMARY KEY (`IdSuplier`),
  ADD KEY `IdPengguna` (`IdPengguna`);

-- AUTO_INCREMENT for dumped tables

-- AUTO_INCREMENT for table `barang`

ALTER TABLE `barang`
  MODIFY `IdBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

-- AUTO_INCREMENT for table `pelanggan`

ALTER TABLE `pelanggan`
  MODIFY `IdPelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- AUTO_INCREMENT for table `pembelian`

ALTER TABLE `pembelian`
  MODIFY `IdPembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

-- AUTO_INCREMENT for table `penjualan`

ALTER TABLE `penjualan`
  MODIFY `IdPenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

-- AUTO_INCREMENT for table `suplier`

ALTER TABLE `suplier`
  MODIFY `IdSuplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)

-- Ketidakleluasaan untuk tabel `barang`

ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`);

-- Ketidakleluasaan untuk tabel `pelanggan`

ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`);

-- Ketidakleluasaan untuk tabel `pembelian`

ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`);

-- Ketidakleluasaan untuk tabel `pengguna`

ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`IdAkses`) REFERENCES `hakakses` (`IdAkses`);

-- Ketidakleluasaan untuk tabel `penjualan`

ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`);

-- Ketidakleluasaan untuk tabel `suplier`

ALTER TABLE `suplier`
  ADD CONSTRAINT `suplier_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
