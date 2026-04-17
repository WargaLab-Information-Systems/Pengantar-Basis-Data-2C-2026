USE db_tp1;

DROP TABLE IF EXISTS pelanggan_setia;

CREATE TABLE pelanggan_setia (
    nomor_identitas INT
);

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);
DESCRIBE pelanggan_setia