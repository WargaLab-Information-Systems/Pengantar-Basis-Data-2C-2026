UPDATE pasien
SET no_telp = '089655477219'
WHERE id_pasien = 1;

UPDATE dokter
SET spesialisasi = 'penyakit dalam'
WHERE id_dokter = 1,

DELETE FROM rekam_medis
WHERE id_rekam = 1;