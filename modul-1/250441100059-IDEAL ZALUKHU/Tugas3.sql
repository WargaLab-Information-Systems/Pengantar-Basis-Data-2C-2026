CREATE DATABASE db_transaksi_harian;

USE db_transaksi_harian;
CREATE TABLE transaksi_harian (
    id_transaksi INT PRIMARY KEY,
    keterangan VARCHAR(100)
);

INSERT INTO transaksi_harian (id_transaksi, keterangan)
VALUES 
(1, 'Beli Buku'),
(2, 'Beli Pulpen');

TRUNCATE TABLE transaksi_harian;

DROP TABLE transaksi_harian;