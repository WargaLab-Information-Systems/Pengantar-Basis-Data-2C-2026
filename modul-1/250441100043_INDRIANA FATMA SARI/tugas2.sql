CREATE TABLE pelanggan_setia (
nomor_identitas INT
);

INSERT INTO pelanggan_setia VALUES (12345);
INSERT INTO pelanggan_setia VALUES (2513);

SELECT * FROM pelanggan_setia 

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(50);

UPDATE pelanggan_setia
SET nomor_identitas = '2513inr'
WHERE nomor_identitas = '12345';

describe pelanggan_setia;