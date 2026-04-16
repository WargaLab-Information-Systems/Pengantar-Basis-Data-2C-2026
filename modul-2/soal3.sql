UPDATE pasien
SET no_telepon = 081336734890
WHERE id_pasien = 1;

UPDATE dokter
SET spesialisasi = 'Penyakit Dalam'
WHERE id_dokter = 1;

DELETE FROM rekam_medis
WHERE id_rekam = 1;