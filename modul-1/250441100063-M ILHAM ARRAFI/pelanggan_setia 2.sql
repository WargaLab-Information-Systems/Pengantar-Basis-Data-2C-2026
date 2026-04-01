-- SOAL N0 2

CREATE TABLE pelanggan_setia (
    nomor_identitas VARCHAR(20) NOT NULL
);

ALTER TABLE pelanggan_setia
    MODIFY nomor_identitas INT;
COMMIT;