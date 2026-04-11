create database MODUL1;
use MODUL1;

create table koleksi_angka(
id_buku BIGINT PRIMARY KEY NOT NULL,
judul VARCHAR(250),
tahun_terbit year,
estimasi_harga DECIMAL (15,2)
);

describe koleksi_angka;
