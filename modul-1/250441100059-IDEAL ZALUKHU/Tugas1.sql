CREATE DATABASE db_perpustakaan_digital;

USE db_perpustakaan_digital;
CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY,
    judul VARCHAR(250),
    tahun_terbit YEAR,
    estimasi_harga DECIMAL(10,2)
); 