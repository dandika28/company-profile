-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.33-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for mikatama
CREATE DATABASE IF NOT EXISTS `mikatama` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mikatama`;

-- Dumping structure for table mikatama.content_commitment
CREATE TABLE IF NOT EXISTS `content_commitment` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(225) DEFAULT NULL,
  `style` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mikatama.content_commitment: ~3 rows (approximately)
/*!40000 ALTER TABLE `content_commitment` DISABLE KEYS */;
REPLACE INTO `content_commitment` (`id`, `title`, `content`, `style`) VALUES
	(1, 'Standar Kualitas Coba', '<p>Test</p>', 'note-info'),
	(2, 'Waktu Produksi Yang Cepat', 'Selalu berusaha untuk menyelesaikan pekerjaan sebelum jatuh tempo sehingga barang dapat terdistribusi lebih cepat.', 'note-info'),
	(3, 'Profesionalisme', 'Selalu berkomitem dalam menjalin hubungan bisnis yang saling menguntungkan dan setara sehingga hubungan.', 'note-danger');
/*!40000 ALTER TABLE `content_commitment` ENABLE KEYS */;

-- Dumping structure for table mikatama.content_culture
CREATE TABLE IF NOT EXISTS `content_culture` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(225) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mikatama.content_culture: ~6 rows (approximately)
/*!40000 ALTER TABLE `content_culture` DISABLE KEYS */;
REPLACE INTO `content_culture` (`id`, `title`, `content`, `image`) VALUES
	(1, 'Test', '<p>Calon customers dapat mengirimkan deskripsi barang dan bahan yang akan dipesan melalui info@mikatama-unika.com.</p>', 'discipline.jpg'),
	(2, 'Jujur', '<p>Kejujuran menjadi landasan budaya kerja yang sangat penting dan harus dimiliki oleh semua stakeholder perusahaan.</p>', 'honesty.jpg'),
	(3, 'Kompak', '<p>Kekompakan dalam arti positif antar bagian/divisi menjadi syarat mutlak untuk dapat menjaga pertumbuhan bisnis.</p>', 'teamwork.jpg'),
	(4, 'Inovatif', '<p>Selalu berusaha untuk memperbaharui produk yang lebih berkualitas.</p>', 'innovative.jpg'),
	(5, 'Leadership', '<p>Menanamkan nilai kepemimpinan kepada seluruh anggota perusahaan agar lebih menjiwai konsep dipimpin dan memimpin.</p>', 'leadership.jpg'),
	(6, 'Ekonomis', '<p>Selalu berusaha agar produk tetap bernilai ekonomis dengan kualitas terbaik.</p>', 'economical.jpg');
/*!40000 ALTER TABLE `content_culture` ENABLE KEYS */;

-- Dumping structure for table mikatama.content_homepage
CREATE TABLE IF NOT EXISTS `content_homepage` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mikatama.content_homepage: ~4 rows (approximately)
/*!40000 ALTER TABLE `content_homepage` DISABLE KEYS */;
REPLACE INTO `content_homepage` (`id`, `title`, `content`) VALUES
	(1, 'Innovative', '<p>Menjadi perusahaan manufaktur unggulan dalam bidang acrylic melalui karya yang selalu inovatif ye gaa</p>'),
	(2, 'Creative', '<p>Meningkatkan nilai perusahaan melalui kreativitas, dan pengembangan kompetensi SDM</p>'),
	(3, 'Valuable', '<p>Menciptakan kemanfaataan jangka panjang antara perusahaan dengan seluruh mitra usaha</p>'),
	(4, 'Fairness', '<p>Menjalankan usaha secara adil dengan memperhatikan azas manfaat bagi semua pihak yang terlibat</p>');
/*!40000 ALTER TABLE `content_homepage` ENABLE KEYS */;

-- Dumping structure for table mikatama.content_howtowork
CREATE TABLE IF NOT EXISTS `content_howtowork` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `icon_color` varchar(50) DEFAULT NULL,
  `process` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mikatama.content_howtowork: ~6 rows (approximately)
/*!40000 ALTER TABLE `content_howtowork` DISABLE KEYS */;
REPLACE INTO `content_howtowork` (`id`, `title`, `content`, `icon`, `icon_color`, `process`) VALUES
	(1, 'Sample', '<p>Calon customers dapat mengirimkan deskripsi barang dan bahan yang akan dipesan melalui info@mikatama-unika.com.</p>\r\n<div id="selenium-highlight">&nbsp;</div>', 'icon-comments', 'red', 'customer'),
	(2, 'Offer', 'PT Mikatama Unika Indonesia akan mengirimkan penawaran harga kepada calon customer.', 'icon-speech', 'blue', 'company'),
	(3, 'Purchase Order', 'Apabila penawaran harga telah diterima, customer harus mengirimkan Purchase Order (PO) kepada PT Mikatama Unika Indonesia dengan melengkapai data perusahaan seperti alamat perusahaan, no telfon, dan NPWP.', 'icon-basket-loaded', 'green-turquoise', 'customer'),
	(4, 'Manufacture', 'PT Mikatama Unika Indonesia akan melakukan pengerjaan sesuai dengan PO. Dimulai dari pemotongan bahan, pembentukan/perakitan dari potongan-potongan bahan, pengeleman ataupun tekukan. Hingga proses finishing dan packaging.', 'icon-drawer', 'purple-medium', 'company'),
	(5, 'Invoice', 'Setelah selesi pengerjaan, PT Mikatama Unika Indonesia akan memberikan Invoice dan faktur pajak kepada customer.', 'icon-calculator', 'blue-steel', 'company'),
	(6, 'Payment', 'Customer harus melakukan pembayaran dalam jangka waktu yang tertera di Invoice.', 'icon-wallet', 'green-jungle', 'customer');
/*!40000 ALTER TABLE `content_howtowork` ENABLE KEYS */;

-- Dumping structure for table mikatama.orderproduct
CREATE TABLE IF NOT EXISTS `orderproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `imageName` varchar(50) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updateBy` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=latin1;

-- Dumping data for table mikatama.orderproduct: ~1 rows (approximately)
/*!40000 ALTER TABLE `orderproduct` DISABLE KEYS */;
REPLACE INTO `orderproduct` (`id`, `product_id`, `name`, `address`, `email`, `phone`, `total`, `imageName`, `created_date`, `updateBy`, `status`) VALUES
	(1001, 2, 'percobaan', 'test', 'test@test', '983838', 3, '1001_img3.jpg', '2018-07-05 14:38:46', NULL, 0);
/*!40000 ALTER TABLE `orderproduct` ENABLE KEYS */;

-- Dumping structure for table mikatama.orderproductmodel
CREATE TABLE IF NOT EXISTS `orderproductmodel` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `totalRecords` int(11) DEFAULT NULL,
  `createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mikatama.orderproductmodel: ~0 rows (approximately)
/*!40000 ALTER TABLE `orderproductmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderproductmodel` ENABLE KEYS */;

-- Dumping structure for table mikatama.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table mikatama.product: ~5 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
REPLACE INTO `product` (`id`, `product_name`, `product_desc`, `price`, `image`, `stock`, `status`) VALUES
	(1, 'Acrylic Grafir', 'Merupakan salah satu produk inovatif, cetakan gambar dibuat dengan grafir mesin laser PT Mikatama Unika Indonesia', '100000', 'grafir.jpg', 0, 1),
	(2, 'Plakat Mikatama', 'Produk Unggulan yang sangat diminati', '75000', 'plakat.jpg', 17, 1),
	(3, 'Acrylic Scorpion', 'Merupakan salah satu produk inovatif PT Mikatama Unika Indonesia, dapat dijadikan sebagai koleksi/hadiah.', '50000', 'scorpion.jpg', 41, 1),
	(4, 'Short Acrylic', 'PT Mikatama Unika Indonesia bekerjasama dengan PT Standardpen Industries.digunakan untuk tempat alat tulis. (pena, pensil, stabilo dll)', '50000', 'short_acrylic.jpg', 8, 1),
	(9, 'percobaan product', '<p>percobaan product baru</p>', '10000', 'avatar3.png', 100, 1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table mikatama.product_image
CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table mikatama.product_image: ~12 rows (approximately)
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
REPLACE INTO `product_image` (`id`, `product_id`, `image`) VALUES
	(1, 1, 'grafir-1.png'),
	(2, 1, 'grafir.jpg'),
	(3, 2, 'plakat.jpg'),
	(4, 2, 'logo.jpg'),
	(6, 16, 'dian_prio_pass.png'),
	(7, 16, 'priopass.png'),
	(8, 8, 'dian_prio_pass.png'),
	(9, 8, 'priopass.png'),
	(10, 9, 'avatar3.png'),
	(11, 10, 'logo.jpg'),
	(12, 10, 'Plakat.jpg'),
	(13, 10, 'Plakat.png');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;

-- Dumping structure for table mikatama.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mikatama.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `username`, `password`, `salt`, `name`, `employee_id`) VALUES
	(1, 'admin', 'password', NULL, 'Admin', 11111);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for trigger mikatama.min_stock
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `min_stock` AFTER UPDATE ON `product` FOR EACH ROW BEGIN
    DECLARE under_zero CONDITION FOR SQLSTATE '99999';
    IF NEW.stock < 0 THEN
        SIGNAL under_zero;
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger mikatama.order_creation_timestamp
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `order_creation_timestamp` BEFORE INSERT ON `orderproduct` FOR EACH ROW BEGIN
	SET NEW.created_date = NOW();
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
