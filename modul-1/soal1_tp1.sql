DROP DATABASE IF EXISTS db_tp1;
CREATE DATABASE db_tp1;
USE db_tp1;

DROP TABLE IF EXISTS koleksi_langka;

CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY,
    judul VARCHAR(250),
    tahun_terbit YEAR,
    estimasi_harga DECIMAL(15,2)
); 
DESCRIBE koleksi_langka