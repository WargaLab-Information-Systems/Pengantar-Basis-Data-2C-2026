CREATE TABLE pelanggan_setia (
nomor_identitas INT PRIMARY KEY
);
INSERT INTO pelanggan_setia (nomor_identitas) VALUES
(12345),
(67890);
ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);