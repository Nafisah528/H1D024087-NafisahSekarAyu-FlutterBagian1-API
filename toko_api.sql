-- Database: toko_api
-- Dibuat untuk Modul Praktikum Mobile: Operasi CRUD dengan API CodeIgniter 4

CREATE DATABASE IF NOT EXISTS `toko_api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko_api`;

-- --------------------------------------------------------
-- Struktur dari tabel `member`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `member` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- Struktur dari tabel `member_token`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `member_token` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `member_id` INT(11) NOT NULL,
  `auth_key` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `fk_member_token_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- Struktur dari tabel `produk`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `produk` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `kode_produk` VARCHAR(255) NOT NULL,
  `nama_produk` VARCHAR(255) NOT NULL,
  `harga` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- Data awal untuk tabel `member` (Password: admin)
-- --------------------------------------------------------
INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Administrator', 'admin@admin.com', '$2y$10$lEyHdIt.2yKXeJmze3cOVOZJt6CsaQi5tnXr2fIv4lCdiS5lR2hzW')
ON DUPLICATE KEY UPDATE `id`=`id`;

-- --------------------------------------------------------
-- Data awal untuk tabel `produk`
-- --------------------------------------------------------
INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `harga`) VALUES
(1, 'A001', 'Kamera', 5000000),
(2, 'A002', 'Kulkas', 2500000),
(3, 'A003', 'Mesin Cuci', 2000000)
ON DUPLICATE KEY UPDATE `id`=`id`;
