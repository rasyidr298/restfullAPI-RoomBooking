-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 29 Jun 2020 pada 19.11
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roombooking`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `idAdmin` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `idAdmin`, `password`) VALUES
(3, '1aaa', '123'),
(4, 'aaa', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookings`
--

CREATE TABLE `bookings` (
  `idBooking` int(100) NOT NULL,
  `nimBooking` varchar(100) NOT NULL,
  `namaPembooking` varchar(50) NOT NULL,
  `namaRuangBooking` varchar(100) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `jamMulai` varchar(15) NOT NULL,
  `jamSelesai` varchar(15) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `statusBooking` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bookings`
--

INSERT INTO `bookings` (`idBooking`, `nimBooking`, `namaPembooking`, `namaRuangBooking`, `tanggal`, `jamMulai`, `jamSelesai`, `keterangan`, `statusBooking`) VALUES
(350, '18020285', 'Rasyid Ridla', '4.2.1', 'Senin 29 Juni 2020', '07:00', '08:00', 'gegwh', 'accepted'),
(351, '18020284', 'Uta Praditya', '4.2.1', 'Senin 29 Juni 2020', '07:00', '08:00', 'Bsbsb', 'accepted');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `idRoom` int(11) NOT NULL,
  `namaRoom` varchar(50) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `fasilitas1` varchar(50) DEFAULT NULL,
  `fasilitas2` varchar(20) NOT NULL,
  `fasilitas3` varchar(20) NOT NULL,
  `fasilitas4` varchar(20) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `image` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '/Backend%20Room%20Booking/TableRooms/image/room.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`idRoom`, `namaRoom`, `kapasitas`, `fasilitas1`, `fasilitas2`, `fasilitas3`, `fasilitas4`, `deskripsi`, `image`) VALUES
(13, '4.2.1', 30, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/1.jpg'),
(14, '4.2.2', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/2.jpeg'),
(15, '4.2.3', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/3.jpg'),
(16, '4.2.4', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/4.jpg'),
(17, '4.2.5', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/5.jpg'),
(18, '4.2.6', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/6.jpeg'),
(19, '4.2.7', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/7.jpg'),
(20, '4.2.8', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/8.jpg'),
(21, '4.2.9', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/9.jpg'),
(22, '4.3.9', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/10.jpg'),
(23, '4.3.8', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/11.jpg'),
(24, '4.3.7', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/12.jpg'),
(25, '4.3.6', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/13.jpeg'),
(26, '4.3.5', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/14.jpg'),
(27, '4.3.4', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/15.jpg'),
(28, '4.3.3', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/room.jpg'),
(29, '4.3.2', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/room.jpg'),
(30, '4.3.1', 33, 'Papan Tulis', 'Proyektor', 'Komputer', 'Speaker', 'Ruangan ini berada di gedung 4 lantai 2 Universitas Amikom Yogyakarta, disediakan Meja Kursi , terdapat pendingin ruangan AC, Papan Tulis, Proyektor, Komputer, Speaker, Komputer', '/Backend%20Room%20Booking/TableRooms/image/room.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `idUsers` int(100) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `namaUser` varchar(25) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `token` varchar(800) DEFAULT NULL,
  `image` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT '/Backend%20Room%20Booking/TableUsers/images/person.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`idUsers`, `nim`, `namaUser`, `nohp`, `password`, `token`, `image`) VALUES
(120, '18020284', 'Uta Praditya', '085964866848', '123456', 'fJFbBgprS5mU8yc151D0Ii:APA91bHoq-qd2GF-akp3pguPWD1FNMiMKbeUCdTNB42MUsQYRTFt9aEnt6K9P14j1z2656MOCMxJINiOYgt7yL1zQrO-pXI4zLSh5L2yvUG-Dd5RNDIMkgMaXVtogl9Bt2VGFlheaBKn', '/Backend%20Room%20Booking/TableUsers/images/person.jpg'),
(119, '18020285', 'Rasyid Ridla', '087745441292', '123456', 'dsMvIRKwSNGNZm-HnME_Gk:APA91bEjlL3q455WHnQ3ciTbBE42y9kyKyj1pPwSyIHkb42_Y5-WGwm9T02aBCl7gdiV4dnr61p7qPvp1lsgQ-ztoMrwvSUZVr2Kll2oBz2gwyiFLXmc2a5nQDxCVXEY4_rq_dVq-aNO', '/Backend%20Room%20Booking/TableUsers/images/person.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`idBooking`),
  ADD KEY `idUserBooking` (`nimBooking`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`idRoom`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `idUsers` (`idUsers`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `idBooking` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `idRoom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
