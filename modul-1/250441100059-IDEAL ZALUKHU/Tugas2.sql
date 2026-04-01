CREATE DATABASE db_pelanggan_setia;

USE db_pelanggan_setia;
CREATE TABLE pelanggan_setia (
    nomor_identitas INT
);

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);