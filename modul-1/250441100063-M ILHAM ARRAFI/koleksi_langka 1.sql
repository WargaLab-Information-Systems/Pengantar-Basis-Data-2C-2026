-- SOAL NO 1

CREATE TABLE `koleksi_langka` (
  `id_buku` bigint NOT NULL,
  `judul` varchar(250) DEFAULT NULL,
  `tahun_terbit` year DEFAULT NULL,
  `estimasi_harga` decimal(18,2) DEFAULT NULL
) 
