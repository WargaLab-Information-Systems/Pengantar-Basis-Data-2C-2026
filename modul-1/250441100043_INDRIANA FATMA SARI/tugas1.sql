CREATE TABLE koleksi_langka (
id_buku BIGINT PRIMARY KEY,
judul VARCHAR (250),
tahun_terbit YEAR (4),
estimasi_harga DECIMAL
);

INSERT INTO koleksi_langka (id_buku, judul, tahun_terbit, estimasi_harga) VALUE (1, 'cerita_kancil', 2010, 20000);
SELECT * FROM koleksi_langka;

DESCRIBE koleksi_langka;