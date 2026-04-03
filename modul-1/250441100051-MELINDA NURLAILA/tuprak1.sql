create database perpustakaan;
use perpustakaan;

create table koleksi_langka (
id_buku bigint primary key,
judul varchar(250),
tahun_terbit year,
estimasi_harga decimal(20,2)
);
