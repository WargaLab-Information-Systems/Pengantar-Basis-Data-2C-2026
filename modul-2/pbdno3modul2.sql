UPDATE pasien
SET no_telepon = '08987654321'
WHERE id_pasien = 1;
UPDATE dokter
SET spesialisasi = 'Kulit'
WHERE id_dokter = 2;
SELECT * FROM rekam_medis;
DELETE FROM rekam_medis
WHERE id_rekam = 1;
SELECT * FROM rekam_medis;