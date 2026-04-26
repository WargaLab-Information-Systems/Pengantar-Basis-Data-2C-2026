					
					-- Nomor 1
CREATE DATABASE elibrary;
USE elibrary;

DROP DATABASE elibrary;

CREATE TABLE koleksi_langka (
	id_buku BIGINT PRIMARY KEY,
	judul VARCHAR (250),
	tahun_terbit YEAR,
	estimasi_harga DECIMAL(15,2)
);

DESCRIBE koleksi_langka;

DROP TABLE koleksi_langka;

INSERT INTO koleksi_langka VALUES 
(1,'Terbit', '2025', '10000,00'),
(2,'aku sukses', '2027', '10000,00'),
(3,'belajar css', '2027', '10000,00');
 
SELECT * FROM koleksi_langka
 
 
 
					-- Nomor 2
CREATE TABLE pelanggan_setia (
	nomor_identitas INT PRIMARY KEY 
);

DROP TABLE pelanggan_setia;
DESCRIBE pelanggan_setia;

ALTER TABLE pelanggan_setia MODIFY nomor_identitas VARCHAR(20);
DESCRIBE pelanggan_setia;

INSERT INTO pelanggan_setia VALUE


					-- Nomor 3
CREATE TABLE transaksi_harian(
id_transaksi INT PRIMARY KEY,
total_bayar DECIMAL (10,2)
);

DESCRIBE transaksi_harian;

DROP TABLE transaksi_harian

TRUNCATE TABLE transaksi_harian;



					-- Nomor 4
CREATE TABLE umpan_balik(
	id_komentar INT PRIMARY KEY,
	nama_pengguna VARCHAR(100),
	isi_komentar TEXT,
	kode_pos CHAR(5)
);

DROP TABLE umpan_balik;
DESCRIBE umpan_balik;






