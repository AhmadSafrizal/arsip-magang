-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 03:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `adkon_arsip`
--

CREATE TABLE `adkon_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `adkon_chart1`
--

CREATE TABLE `adkon_chart1` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adkon_chart2`
--

CREATE TABLE `adkon_chart2` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adkon_kategori`
--

CREATE TABLE `adkon_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi_arsip`
--

CREATE TABLE `dokumentasi_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_nama` varchar(255) DEFAULT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dokumentasi_arsip`
--

INSERT INTO `dokumentasi_arsip` (`arsip_id`, `arsip_waktu_upload`, `arsip_pengupload`, `arsip_nama`, `arsip_kategori`, `arsip_file`) VALUES
(22, '2022-11-08 12:58:24', 23, 'BC 02', 13, '1721333869_WhatsApp Image 2022-09-13 at 17.57.12.jpeg'),
(23, '2022-11-08 13:52:17', 23, 'BC 01', 13, '1751143311_WhatsApp Image 2022-09-13 at 17.57.05.jpeg'),
(24, '2022-11-08 13:53:37', 23, 'BC 03', 13, '1415747285_WhatsApp Image 2022-09-13 at 17.57.08.jpeg'),
(25, '2022-11-08 13:53:56', 23, 'BC 04', 13, '1748574328_WhatsApp Image 2022-09-13 at 17.57.12.jpeg'),
(26, '2022-11-08 13:56:29', 23, 'BC 01', 14, '1769460515_WhatsApp Image 2022-09-13 at 17.57.08.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi_kategori`
--

CREATE TABLE `dokumentasi_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dokumentasi_kategori`
--

INSERT INTO `dokumentasi_kategori` (`kategori_id`, `kategori_nama`) VALUES
(13, 'Minggu 2 Bulan November'),
(14, 'Minggu 3 Bulan November');

-- --------------------------------------------------------

--
-- Table structure for table `engineering_arsip`
--

CREATE TABLE `engineering_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engineering_arsip`
--

INSERT INTO `engineering_arsip` (`arsip_id`, `arsip_waktu_upload`, `arsip_pengupload`, `arsip_kode`, `arsip_nama`, `arsip_jenis`, `arsip_kategori`, `arsip_keterangan`, `arsip_file`) VALUES
(13, '2022-09-20 08:21:56', 9, 'eng-001', 'Laporan Minggu ke1 Bulan 9 Tahun 2022', 'xlsx', 11, 'Laporan Minggu ke1 Bulan 9 Tahun 2022', '1894456214_data.xlsx'),
(14, '2022-10-15 14:44:34', 9, 'MGR-ENG-001', 'dsdsad', 'xlsx', 11, '<p>sdads</p>', '1113426421_1385494959_pkr 1 (1).xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `engineering_chart1`
--

CREATE TABLE `engineering_chart1` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `engineering_chart2`
--

CREATE TABLE `engineering_chart2` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `engineering_dashboard`
--

CREATE TABLE `engineering_dashboard` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `pengupload` varchar(100) NOT NULL,
  `no_urut` varchar(11) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engineering_dashboard`
--

INSERT INTO `engineering_dashboard` (`id`, `judul`, `tanggal`, `pengupload`, `no_urut`, `gambar`) VALUES
(1, 'Progres', '2022-09-21', 'Engineering', '1', '1610118994_Screenshot (1).png'),
(2, 'jdsa', '2022-09-21', 'Engineering', '2', '757181361_Screenshot (2).png');

-- --------------------------------------------------------

--
-- Table structure for table `engineering_kategori`
--

CREATE TABLE `engineering_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engineering_kategori`
--

INSERT INTO `engineering_kategori` (`kategori_id`, `kategori_nama`, `kategori_keterangan`) VALUES
(11, 'Laporan Mingguan', 'Laporan Mingguan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_keterangan`) VALUES
(1, 'Tidak berkategori', 'Semua yang tidak memiliki kategori'),
(3, 'Surat Keputusan', 'Format arsip untuk surat keputusan\r\n'),
(4, 'Surat Izin Pelaksanaan', 'Contoh format surat izin pelaksaan pekerjaan'),
(5, 'Surat Perintah Kerja Proyek jalan', 'Contoh format surat perintah untuk pekerjaan proyek jalan'),
(6, 'Surat Perintah Kerja Proyek Jembatan', 'Contoh format untuk surat perintah kerja proyek jembatan'),
(7, 'Surat Kesehatan Pegawai', 'Surat kesehatan untuk pegawai'),
(8, 'Surat Lampiran Skripsi', 'Surat contoh lampiran untuk skripsi'),
(10, 'Curiculum Vitae', 'Contoh format surat curiculum vitae untuk kenaikan jabatan');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan_arsip`
--

CREATE TABLE `keuangan_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keuangan_arsip`
--

INSERT INTO `keuangan_arsip` (`arsip_id`, `arsip_waktu_upload`, `arsip_pengupload`, `arsip_kode`, `arsip_nama`, `arsip_jenis`, `arsip_kategori`, `arsip_keterangan`, `arsip_file`) VALUES
(13, '2022-09-20 07:48:56', 6, 'Keu-001', 'Laporan minggu ke1 bulan 9 tahun 2022', 'docx', 11, 'Laporan minggu ke1 bulan 9 tahun 2022', '1463111087_1.docx'),
(14, '2022-10-17 07:04:45', 6, 'MGR-KEU-002', 'dsldlsad', 'docx', 11, '<p>dosadopeiodkpa</p>', '1525969051_1575700723_UAS_Ahmad SAfrizal_3619110011.docx');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan_chart1`
--

CREATE TABLE `keuangan_chart1` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keuangan_chart1`
--

INSERT INTO `keuangan_chart1` (`id`, `chart`, `img`) VALUES
(1, 'chart 1', '801613445_f.jpg'),
(2, 'chart 2', '1129355499_e.jpg'),
(3, 'chart 3', '170009401_d.png'),
(4, 'chart 4', '1045628464_c.jpg'),
(5, 'chart 5', '1581304796_b.png'),
(6, 'chart 6', '2084732951_a.png'),
(7, 'chart 7', '1415443002_f.jpg'),
(8, 'chart 8', '74731082_b.png');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan_chart2`
--

CREATE TABLE `keuangan_chart2` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keuangan_chart2`
--

INSERT INTO `keuangan_chart2` (`id`, `chart`, `img`) VALUES
(1, 'chart 1', '801613445_f.jpg'),
(2, 'chart 2', '1129355499_e.jpg'),
(3, 'chart 3', '170009401_d.png'),
(4, 'chart 4', '1045628464_c.jpg'),
(5, 'chart 5', '1581304796_b.png'),
(6, 'chart 6', '2084732951_a.png'),
(7, 'chart 7', '1415443002_f.jpg'),
(8, 'chart 8', '74731082_b.png');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan_kategori`
--

CREATE TABLE `keuangan_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keuangan_kategori`
--

INSERT INTO `keuangan_kategori` (`kategori_id`, `kategori_nama`, `kategori_keterangan`) VALUES
(11, 'Laporan Mingguan', 'Laporan Mingguan');

-- --------------------------------------------------------

--
-- Table structure for table `km_arsip`
--

CREATE TABLE `km_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `km_chart1`
--

CREATE TABLE `km_chart1` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `km_chart2`
--

CREATE TABLE `km_chart2` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `km_kategori`
--

CREATE TABLE `km_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `komersial_arsip`
--

CREATE TABLE `komersial_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komersial_arsip`
--

INSERT INTO `komersial_arsip` (`arsip_id`, `arsip_waktu_upload`, `arsip_pengupload`, `arsip_kode`, `arsip_nama`, `arsip_jenis`, `arsip_kategori`, `arsip_keterangan`, `arsip_file`) VALUES
(11, '2022-09-19 12:58:31', 5, 'kom-001', 'Laporan minggu 2 bulan september 2022', 'pdf', 11, 'Laporan untuk minggu ke dua bulan september tahun 2022', '1115366494_Tugas1_AhmadSafrizal_3619110011_STI.pdf'),
(13, '2022-10-02 11:08:55', 5, 'Kom-003', 'dsadsad', 'xlsx', 11, '<p>Laporan mingguna bulan 9</p>', '1634122743_1385494959_pkr 1.xlsx'),
(16, '2022-10-17 06:59:04', 5, 'MGR-KOM-004', 'jjlkjk', 'doc', 11, '<p>dasdasd</p>', '1725026038_jbptunikompp-gdl-iwansetiaw-21211-1-kerjapr-k.doc'),
(17, '2022-10-26 09:21:11', 5, 'MGR-KOM-005', 'COntoh Upload online', 'docx', 11, '', '516066867_WRK-C-MOS-001-0 METODE PEMANCANGAN (INDONESIA).docx'),
(18, '2022-10-27 07:53:59', 11, 'MGR-KOM-006', 'Test', 'docx', 11, '', '990413506_FORMAT KAMPUS.docx'),
(21, '2022-10-29 15:42:53', 11, 'MGR-KOM-007', 'Pemesanan reza', 'pdf', 11, '', '193514286_REZA MILADY FAUZAN-FST.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `komersial_chart1`
--

CREATE TABLE `komersial_chart1` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komersial_chart1`
--

INSERT INTO `komersial_chart1` (`id`, `chart`, `img`) VALUES
(1, 'Chart 1', '1781588914_f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `komersial_chart2`
--

CREATE TABLE `komersial_chart2` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komersial_chart2`
--

INSERT INTO `komersial_chart2` (`id`, `chart`, `img`) VALUES
(1, 'Chart 1', '253178821_e.jpg'),
(2, 'chart 2', '174255593_a.png');

-- --------------------------------------------------------

--
-- Table structure for table `komersial_kategori`
--

CREATE TABLE `komersial_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komersial_kategori`
--

INSERT INTO `komersial_kategori` (`kategori_id`, `kategori_nama`, `kategori_keterangan`) VALUES
(11, 'Laporan Mingguan', 'Data-data untuk melaporkan hasil mingguan');

-- --------------------------------------------------------

--
-- Table structure for table `manrisk_arsip`
--

CREATE TABLE `manrisk_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manrisk_chart1`
--

CREATE TABLE `manrisk_chart1` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manrisk_chart2`
--

CREATE TABLE `manrisk_chart2` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manrisk_kategori`
--

CREATE TABLE `manrisk_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `petugas_id` int(11) NOT NULL,
  `petugas_nama` varchar(255) NOT NULL,
  `petugas_username` varchar(255) NOT NULL,
  `petugas_password` varchar(255) NOT NULL,
  `petugas_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`petugas_id`, `petugas_nama`, `petugas_username`, `petugas_password`, `petugas_foto`) VALUES
(4, 'Jhony Andrean', 'petugas1', 'b53fe7751b37e40ff34d012c7774d65f', ''),
(5, 'Junaidi Mus', 'petugas2', 'ac5604a8b8504d4ff5b842480df02e91', ''),
(6, 'Jamilah Suanda', 'petugas3', '6f7dc121bccfd778744109cac9593474', '');

-- --------------------------------------------------------

--
-- Table structure for table `produksi_arsip`
--

CREATE TABLE `produksi_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produksi_arsip`
--

INSERT INTO `produksi_arsip` (`arsip_id`, `arsip_waktu_upload`, `arsip_pengupload`, `arsip_kode`, `arsip_nama`, `arsip_jenis`, `arsip_kategori`, `arsip_keterangan`, `arsip_file`) VALUES
(13, '2022-09-20 08:23:21', 10, 'pro-001', 'Laporan Minggu ke1 Bulan 9 Tahun 2022', 'xlsx', 11, 'Laporan Minggu ke1 Bulan 9 Tahun 2022', '1385494959_pkr 1.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `produksi_chart1`
--

CREATE TABLE `produksi_chart1` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produksi_chart2`
--

CREATE TABLE `produksi_chart2` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produksi_kategori`
--

CREATE TABLE `produksi_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produksi_kategori`
--

INSERT INTO `produksi_kategori` (`kategori_id`, `kategori_nama`, `kategori_keterangan`) VALUES
(11, 'Laporan Mingguan', 'Laporan Mingguan');

-- --------------------------------------------------------

--
-- Table structure for table `qc_arsip`
--

CREATE TABLE `qc_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qc_arsip`
--

INSERT INTO `qc_arsip` (`arsip_id`, `arsip_waktu_upload`, `arsip_pengupload`, `arsip_kode`, `arsip_nama`, `arsip_jenis`, `arsip_kategori`, `arsip_keterangan`, `arsip_file`) VALUES
(13, '2022-09-20 08:20:38', 8, 'qc-001', 'Laporan Minggu ke1 Bulan 9 Tahun 2022', 'docx', 11, 'Laporan Minggu ke1 Bulan 9 Tahun 2022', '1575700723_UAS_Ahmad SAfrizal_3619110011.docx');

-- --------------------------------------------------------

--
-- Table structure for table `qc_chart1`
--

CREATE TABLE `qc_chart1` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `qc_chart2`
--

CREATE TABLE `qc_chart2` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `qc_kategori`
--

CREATE TABLE `qc_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qc_kategori`
--

INSERT INTO `qc_kategori` (`kategori_id`, `kategori_nama`, `kategori_keterangan`) VALUES
(11, 'Laporan Mingguan', 'Laporan Mingguan');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `riwayat_id` int(11) NOT NULL,
  `riwayat_waktu` datetime NOT NULL,
  `riwayat_user` varchar(100) NOT NULL,
  `riwayat_arsip` varchar(100) NOT NULL,
  `riwayat_lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`riwayat_id`, `riwayat_waktu`, `riwayat_user`, `riwayat_arsip`, `riwayat_lokasi`) VALUES
(14, '2022-09-20 12:56:36', 'Bapak Admin', 'eng-001', 'Engineering'),
(15, '2022-09-20 13:38:30', 'Bapak Admin', 'kom-001', 'Komersial'),
(16, '2022-09-20 13:39:59', 'Bapak Admin', 'Keu-001', 'Keuangan'),
(17, '2022-09-20 13:40:07', 'Bapak Admin', 'she-001', 'SHE'),
(18, '2022-09-20 13:42:52', 'Bapak Admin', 'eng-001', 'Engineering'),
(19, '2022-09-20 13:43:22', 'Bapak Admin', 'pro-001', 'Produksi'),
(20, '2022-09-20 13:45:35', 'Bapak Admin', 'pro-001', 'Produksi'),
(21, '2022-09-20 13:48:26', 'Bapak Admin', 'qc-001', 'QC'),
(22, '2022-09-21 10:50:15', 'Engineering', 'kom-001', 'Komersial'),
(23, '2022-09-21 10:50:55', 'Engineering', 'Keu-001', 'Keuangan'),
(24, '2022-09-22 07:58:28', 'Bapak Admin', 'pro-001', 'Produksi'),
(25, '2022-09-22 14:45:39', 'Engineering', 'she-001', 'SHE'),
(26, '2022-09-22 14:45:52', 'Engineering', 'Keu-001', 'Keuangan'),
(27, '2022-10-11 15:07:23', 'Bapak Admin', 'qc-001', 'QC'),
(28, '2022-10-12 06:57:59', 'Bapak Admin', 'Kom-003', 'Komersial'),
(29, '2022-10-12 06:58:16', 'Bapak Admin', 'Keu-001', 'Keuangan'),
(30, '2022-10-12 07:01:08', 'Bapak Admin', 'she-001', 'SHE'),
(31, '2022-10-12 07:01:22', 'Bapak Admin', 'qc-001', 'QC'),
(32, '2022-10-12 07:01:34', 'Bapak Admin', 'eng-001', 'Engineering'),
(33, '2022-10-12 07:01:57', 'Bapak Admin', 'pro-001', 'Produksi'),
(34, '2022-10-12 07:23:43', 'Komersial', 'Kom-003', 'Komersial'),
(35, '2022-10-12 07:31:07', 'Komersial', 'Keu-001', 'Keuangan'),
(36, '2022-10-12 07:31:18', 'Komersial', 'she-001', 'SHE'),
(37, '2022-10-12 07:31:31', 'Komersial', 'qc-001', 'QC'),
(38, '2022-10-12 07:31:44', 'Komersial', 'eng-001', 'Engineering'),
(39, '2022-10-12 07:31:51', 'Komersial', 'pro-001', 'Produksi'),
(40, '2022-10-12 08:44:07', 'Keuangan', 'kom-001', 'Komersial'),
(41, '2022-10-12 08:44:50', 'Keuangan', 'Keu-001', 'Keuangan'),
(42, '2022-10-12 08:45:10', 'Keuangan', 'she-001', 'SHE'),
(43, '2022-10-12 08:46:05', 'Keuangan', 'qc-001', 'QC'),
(44, '2022-10-12 08:46:12', 'Keuangan', 'eng-001', 'Engineering'),
(45, '2022-10-12 08:47:20', 'Keuangan', 'pro-001', 'Produksi'),
(46, '2022-10-12 08:56:23', 'SHE', 'Kom-003', 'Komersial'),
(47, '2022-10-12 08:56:41', 'SHE', 'Keu-001', 'Keuangan'),
(48, '2022-10-12 09:03:39', 'SHE', 'qc-001', 'QC'),
(49, '2022-10-12 09:04:27', 'SHE', 'eng-001', 'Engineering'),
(50, '2022-10-12 09:04:45', 'SHE', 'pro-001', 'Produksi'),
(51, '2022-10-12 09:11:06', 'QC', 'Kom-003', 'Komersial'),
(52, '2022-10-12 09:15:08', 'SHE', 'she-001', 'SHE'),
(53, '2022-10-12 09:16:15', 'QC', 'Kom-003', 'Komersial'),
(54, '2022-10-12 09:16:36', 'QC', 'Keu-001', 'Keuangan'),
(55, '2022-10-12 09:16:51', 'QC', 'she-001', 'SHE'),
(56, '2022-10-12 09:19:18', 'QC', 'qc-001', 'QC'),
(57, '2022-10-12 09:20:29', 'QC', 'eng-001', 'Engineering'),
(58, '2022-10-12 09:20:43', 'QC', 'pro-001', 'Produksi'),
(59, '2022-10-12 09:38:08', 'Engineering', 'Kom-003', 'Komersial'),
(60, '2022-10-12 09:38:21', 'Engineering', 'Keu-001', 'Keuangan'),
(61, '2022-10-12 09:38:32', 'Engineering', 'she-001', 'SHE'),
(62, '2022-10-12 09:38:46', 'Engineering', 'qc-001', 'QC'),
(63, '2022-10-12 09:38:59', 'Engineering', 'eng-001', 'Engineering'),
(64, '2022-10-12 09:39:21', 'Engineering', 'pro-001', 'Produksi'),
(65, '2022-10-12 09:48:25', 'Produksi', 'Kom-003', 'Komersial'),
(66, '2022-10-12 09:48:38', 'Produksi', 'Keu-001', 'Keuangan'),
(67, '2022-10-12 09:48:50', 'Produksi', 'she-001', 'SHE'),
(68, '2022-10-12 09:49:06', 'Produksi', 'qc-001', 'QC'),
(69, '2022-10-12 09:49:16', 'Produksi', 'qc-001', 'QC'),
(70, '2022-10-12 09:49:26', 'Produksi', 'eng-001', 'Engineering'),
(71, '2022-10-12 09:51:04', 'Produksi', 'pro-001', 'Produksi'),
(72, '2022-10-13 09:04:55', 'Komersial', 'eng-001', 'Engineering'),
(73, '2022-10-14 09:34:49', 'Bapak Admin', 'Keu-001', 'Keuangan'),
(74, '2022-10-14 09:34:57', 'Bapak Admin', 'eng-001', 'Engineering'),
(75, '2022-10-14 09:35:03', 'Bapak Admin', 'pro-001', 'Produksi'),
(76, '2022-10-14 09:36:05', 'Bapak Admin', 'Kom-003', 'Komersial'),
(77, '2022-10-14 09:36:15', 'Bapak Admin', 'qc-001', 'QC'),
(78, '2022-10-14 10:22:21', 'Komersial', 'pro-001', 'Produksi'),
(79, '2022-10-15 08:15:06', 'Super Admin', 'Keu-001', 'Keuangan'),
(80, '2022-10-26 09:17:55', 'Bapak Admin', 'qc-001', 'QC'),
(81, '2022-10-27 07:54:14', 'Super Admin', 'MGR-KOM-006', 'Komersial'),
(82, '2022-10-27 07:54:34', 'Super Admin', 'MGR-KOM-006', 'Komersial'),
(83, '2022-10-27 07:55:14', 'Super Admin', 'MGR-KOM-005', 'Komersial'),
(84, '2022-10-27 07:56:26', 'Super Admin', 'MGR-KOM-006', 'Komersial'),
(85, '2022-10-27 07:57:47', 'Super Admin', 'MGR-KOM-006', 'Komersial'),
(86, '2022-10-27 08:00:33', 'Bapak Admin', 'MGR-KOM-006', 'Komersial'),
(87, '2022-10-27 08:00:43', 'Super Admin', 'MGR-KOM-006', 'Komersial'),
(88, '2022-10-27 09:59:58', 'Super Admin', 'MGR-ENG-001', 'Engineering'),
(89, '2022-10-27 10:00:15', 'Super Admin', 'pro-001', 'Produksi'),
(90, '2022-10-28 21:10:02', 'Bapak Admin', 'MGR-KOM-006', 'Komersial'),
(91, '2022-10-29 10:13:05', 'Bapak Admin', 'MGR-KOM-006', 'Komersial'),
(92, '2022-10-29 10:14:26', 'Bapak Admin', 'MGR-KOM-006', 'Komersial'),
(93, '2022-10-29 10:15:18', 'Bapak Admin', 'MGR-KOM-006', 'Komersial'),
(94, '2022-10-29 10:16:21', 'Bapak Admin', 'MGR-KOM-005', 'Komersial'),
(95, '2022-10-29 10:17:30', 'Bapak Admin', 'MGR-KOM-006', 'Komersial'),
(96, '2022-10-29 10:17:58', 'Bapak Admin', 'MGR-KOM-005', 'Komersial'),
(97, '2022-10-29 15:08:33', 'Bapak Admin', 'MGR-KOM-006', 'Komersial'),
(98, '2022-10-29 15:09:46', 'Bapak Admin', 'MGR-KOM-004', 'Komersial'),
(99, '2022-10-29 15:12:48', 'Bapak Admin', 'MGR-KEU-002', 'Keuangan'),
(100, '2022-10-29 15:19:32', 'Bapak Admin', 'MGR-KOM-006', 'Komersial'),
(101, '2022-10-29 15:20:52', 'Bapak Admin', 'MGR-KOM-006', 'Komersial'),
(102, '2022-10-29 15:23:29', 'Bapak Admin', 'MGR-KOM-006', 'Komersial'),
(103, '2022-10-29 15:44:16', 'Super Admin', 'MGR-KOM-005', 'Komersial'),
(104, '2022-10-31 12:33:45', 'User', 'MGR-ENG-001', 'Engineering'),
(105, '2022-10-31 14:09:20', 'User', 'qc-001', 'QC');

-- --------------------------------------------------------

--
-- Table structure for table `scm_arsip`
--

CREATE TABLE `scm_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scm_chart1`
--

CREATE TABLE `scm_chart1` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `scm_chart2`
--

CREATE TABLE `scm_chart2` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `scm_kategori`
--

CREATE TABLE `scm_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `she_arsip`
--

CREATE TABLE `she_arsip` (
  `arsip_id` int(11) NOT NULL,
  `arsip_waktu_upload` datetime NOT NULL,
  `arsip_pengupload` int(11) NOT NULL,
  `arsip_kode` varchar(255) NOT NULL,
  `arsip_nama` varchar(255) NOT NULL,
  `arsip_jenis` varchar(255) NOT NULL,
  `arsip_kategori` int(11) NOT NULL,
  `arsip_keterangan` text NOT NULL,
  `arsip_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `she_arsip`
--

INSERT INTO `she_arsip` (`arsip_id`, `arsip_waktu_upload`, `arsip_pengupload`, `arsip_kode`, `arsip_nama`, `arsip_jenis`, `arsip_kategori`, `arsip_keterangan`, `arsip_file`) VALUES
(13, '2022-09-20 08:19:13', 7, 'she-001', 'Laporan Minggu ke1 Bulan 9 Tahun 2022', 'docx', 11, 'Laporan Minggu ke1 Bulan 9 Tahun 2022', '276090183_dokumen 3619110011.docx');

-- --------------------------------------------------------

--
-- Table structure for table `she_chart1`
--

CREATE TABLE `she_chart1` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `she_chart2`
--

CREATE TABLE `she_chart2` (
  `id` int(11) NOT NULL,
  `chart` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `she_kategori`
--

CREATE TABLE `she_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `she_kategori`
--

INSERT INTO `she_kategori` (`kategori_id`, `kategori_nama`, `kategori_keterangan`) VALUES
(11, 'Laporan Mingguan', 'Laporan Mingguan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `id_nama` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `id_nama`, `nama`, `username`, `password`, `level`, `foto`) VALUES
(1, '111', 'Bapake Admin', 'Bapak Admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '1052316811_Screenshot (1).png'),
(2, '1234', 'User', 'User', '8f9bfe9d1345237cb3b2b205864da075', 'user', '251953743_Screenshot (2).png'),
(5, '4321', 'Komersial', 'Komersial', 'f02efef51e32beb9c12ee7ca454c1c99', 'komersial', '441879635_WhatsApp Image 2022-09-13 at 17.57.05.jpeg'),
(6, '123', 'Keuangan', 'Keuangan', '4416ad3334b6666f8618c37a61a11c8d', 'keuangan', '93792441_tiga.png'),
(7, '124', 'SHE', 'SHE', '95701ea3245cb93d7b72a6f588518e88', 'she', '1078602745_WhatsApp Image 2022-09-13 at 17.57.08.jpeg'),
(8, '125', 'QC', 'QC', '0f66f704a6ede9639e16587e7b2164fa', 'qc', '375578985_WhatsApp Image 2022-09-13 at 17.57.09.jpeg'),
(9, '126', 'Engineering', 'Engineering', 'ab0268fb8036a892dc341945cb7ae3be', 'engineering', '492252373_WhatsApp Image 2022-09-13 at 17.57.12.jpeg'),
(10, '127', 'Produksi', 'Produksi', '37fa1dcd1e384bc9effac1a20a473073', 'produksi', '805390489_WhatsApp Image 2022-09-13 at 17.57.jpeg'),
(11, '999', 'Super Admin', 'Super Admin', 'dbf36ff3e3827639223983ee8ac47b42', 'super_admin', '1182293205_login.png'),
(12, '001', 'superadmin', 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', 'super_admin', '1235807301_Screenshot (27).png'),
(13, '002', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '2096706191_chart dengan gambar (jumlah tidak ditentukan) (2).png'),
(14, '003', 'komersial', 'komersial', 'b30f1523cc62afd049aed787d0c4fc14', 'komersial', '1502248478_chart dengan gambar (jumlah tidak ditentukan) (1).png'),
(15, '004', 'keuangan', 'keuangan', 'a4151d4b2856ec63368a7c784b1f0a6e', 'keuangan', '263010897_chart dengan inputan angka (2).png'),
(16, '005', 'she', 'she', '9eb0d040ef57f4a06759cf307b657918', 'she', '1138619645_input arsip.png'),
(17, '006', 'qc', 'qc', '9300c96aaec324987ea5ca6e13a02eda', 'qc', '2002850581_Screenshot (25).png'),
(18, '007', 'engineering', 'engineering', '5d554bc5f3d2cd182cdd0952b1fb87ca', 'engineering', '179924059_login.png'),
(19, '008', 'produksi', 'produksi', 'edf3017a2946290b95c783bd1a7f0ba7', 'produksi', '593244273_Screenshot (26).png'),
(20, '101', 'Adkon', 'Adkon', '71e3ddeebb8489ccd1e2004322433dfc', 'adkon', '1005664522_dua.jpeg'),
(21, '102', 'SCM', 'SCM', '616842b667c02164dda634d846884093', 'scm', '938004065_b.png'),
(22, '105', 'Manrisk', 'Manrisk', 'abc6dce30fc48b5c8d948da53cf44ce4', 'manrisk', '2038773631_pexels-kevin-ku-577585.jpg'),
(23, '103', 'Dokumentasi', 'Dokumentasi', '23a1ddcfd15b908a440ce81f1431e7f2', 'dokumentasi', '1524672620_pexels-neo-2653362.jpg'),
(24, '104', 'Knowledge Manajemen', 'Knowledge Manajemen', 'dd480f25b31ec27223fee2c6edcacb3c', 'km', '1746654304_WhatsApp Image 2022-09-13 at 17.57.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adkon_arsip`
--
ALTER TABLE `adkon_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `adkon_chart1`
--
ALTER TABLE `adkon_chart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adkon_chart2`
--
ALTER TABLE `adkon_chart2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adkon_kategori`
--
ALTER TABLE `adkon_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `dokumentasi_arsip`
--
ALTER TABLE `dokumentasi_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `dokumentasi_kategori`
--
ALTER TABLE `dokumentasi_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `engineering_arsip`
--
ALTER TABLE `engineering_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `engineering_chart1`
--
ALTER TABLE `engineering_chart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineering_chart2`
--
ALTER TABLE `engineering_chart2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineering_dashboard`
--
ALTER TABLE `engineering_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineering_kategori`
--
ALTER TABLE `engineering_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `keuangan_arsip`
--
ALTER TABLE `keuangan_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `keuangan_chart1`
--
ALTER TABLE `keuangan_chart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keuangan_chart2`
--
ALTER TABLE `keuangan_chart2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keuangan_kategori`
--
ALTER TABLE `keuangan_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `km_arsip`
--
ALTER TABLE `km_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `km_chart1`
--
ALTER TABLE `km_chart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `km_chart2`
--
ALTER TABLE `km_chart2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `km_kategori`
--
ALTER TABLE `km_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `komersial_arsip`
--
ALTER TABLE `komersial_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `komersial_chart1`
--
ALTER TABLE `komersial_chart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komersial_chart2`
--
ALTER TABLE `komersial_chart2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komersial_kategori`
--
ALTER TABLE `komersial_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `manrisk_arsip`
--
ALTER TABLE `manrisk_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `manrisk_chart1`
--
ALTER TABLE `manrisk_chart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manrisk_chart2`
--
ALTER TABLE `manrisk_chart2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manrisk_kategori`
--
ALTER TABLE `manrisk_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`petugas_id`);

--
-- Indexes for table `produksi_arsip`
--
ALTER TABLE `produksi_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `produksi_chart1`
--
ALTER TABLE `produksi_chart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produksi_chart2`
--
ALTER TABLE `produksi_chart2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produksi_kategori`
--
ALTER TABLE `produksi_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `qc_arsip`
--
ALTER TABLE `qc_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `qc_chart1`
--
ALTER TABLE `qc_chart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qc_chart2`
--
ALTER TABLE `qc_chart2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qc_kategori`
--
ALTER TABLE `qc_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`riwayat_id`);

--
-- Indexes for table `scm_arsip`
--
ALTER TABLE `scm_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `scm_chart1`
--
ALTER TABLE `scm_chart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scm_chart2`
--
ALTER TABLE `scm_chart2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scm_kategori`
--
ALTER TABLE `scm_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `she_arsip`
--
ALTER TABLE `she_arsip`
  ADD PRIMARY KEY (`arsip_id`);

--
-- Indexes for table `she_chart1`
--
ALTER TABLE `she_chart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `she_chart2`
--
ALTER TABLE `she_chart2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `she_kategori`
--
ALTER TABLE `she_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adkon_arsip`
--
ALTER TABLE `adkon_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `adkon_chart1`
--
ALTER TABLE `adkon_chart1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adkon_chart2`
--
ALTER TABLE `adkon_chart2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adkon_kategori`
--
ALTER TABLE `adkon_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dokumentasi_arsip`
--
ALTER TABLE `dokumentasi_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `dokumentasi_kategori`
--
ALTER TABLE `dokumentasi_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `engineering_arsip`
--
ALTER TABLE `engineering_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `engineering_chart1`
--
ALTER TABLE `engineering_chart1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `engineering_chart2`
--
ALTER TABLE `engineering_chart2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `engineering_dashboard`
--
ALTER TABLE `engineering_dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `engineering_kategori`
--
ALTER TABLE `engineering_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `keuangan_arsip`
--
ALTER TABLE `keuangan_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `keuangan_chart1`
--
ALTER TABLE `keuangan_chart1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `keuangan_chart2`
--
ALTER TABLE `keuangan_chart2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `keuangan_kategori`
--
ALTER TABLE `keuangan_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `km_arsip`
--
ALTER TABLE `km_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `km_chart1`
--
ALTER TABLE `km_chart1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `km_chart2`
--
ALTER TABLE `km_chart2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `km_kategori`
--
ALTER TABLE `km_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `komersial_arsip`
--
ALTER TABLE `komersial_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `komersial_chart1`
--
ALTER TABLE `komersial_chart1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `komersial_chart2`
--
ALTER TABLE `komersial_chart2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komersial_kategori`
--
ALTER TABLE `komersial_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `manrisk_arsip`
--
ALTER TABLE `manrisk_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `manrisk_chart1`
--
ALTER TABLE `manrisk_chart1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manrisk_chart2`
--
ALTER TABLE `manrisk_chart2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manrisk_kategori`
--
ALTER TABLE `manrisk_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `petugas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produksi_arsip`
--
ALTER TABLE `produksi_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `produksi_chart1`
--
ALTER TABLE `produksi_chart1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produksi_chart2`
--
ALTER TABLE `produksi_chart2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produksi_kategori`
--
ALTER TABLE `produksi_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `qc_arsip`
--
ALTER TABLE `qc_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `qc_chart1`
--
ALTER TABLE `qc_chart1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `qc_chart2`
--
ALTER TABLE `qc_chart2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `qc_kategori`
--
ALTER TABLE `qc_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `riwayat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `scm_arsip`
--
ALTER TABLE `scm_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `scm_chart1`
--
ALTER TABLE `scm_chart1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scm_chart2`
--
ALTER TABLE `scm_chart2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scm_kategori`
--
ALTER TABLE `scm_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `she_arsip`
--
ALTER TABLE `she_arsip`
  MODIFY `arsip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `she_chart1`
--
ALTER TABLE `she_chart1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `she_chart2`
--
ALTER TABLE `she_chart2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `she_kategori`
--
ALTER TABLE `she_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
