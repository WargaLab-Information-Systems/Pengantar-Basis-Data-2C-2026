CREATE TABLE koleksi_langka (
  id_buku BIGINT NOT NULL,
  judul VARCHAR(250),
  tahun_terbit YEAR,
  estimasi_harga DECIMAL(20,2),
  PRIMARY KEY (id_buku)
);