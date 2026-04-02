CREATE TABLE `transaksi_harian` (
  `id_transaksi` int NOT NULL,
  `jumlah` decimal(9,2) NOT NULL
)

TRUNCATE TABLE transaksi_harian;

DROP TABLE transaksi_harian;