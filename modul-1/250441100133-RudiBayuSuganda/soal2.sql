CREATE TABLE `pelanggan_setia` (
  `id_pelanggan` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nomor_identitas` int NOT NULL
)

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20) NOT NULL;