UPDATE pasien
SET no_telepon = '081534760126'
WHERE id_pasien = 1;

UPDATE dokter
SET spesialisasi = 'penyakit dalam'
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;

DELETE FROM rekam_medis
WHERE id_rekam = 1;

SELECT * FROM rekam_medis;