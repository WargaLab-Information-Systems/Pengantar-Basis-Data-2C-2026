create database db_perpustakaan;
use db_perpustakaan;

create table koleksi_angka(
id_buku BIGINT PRIMARY KEY,
judul VARCHAR(250),
tahun_terbit year,
estimasi_harga DECIMAL (10,2)
);

describe koleksi_angka;

select * from koleksi_angka;

SHOW databases;

