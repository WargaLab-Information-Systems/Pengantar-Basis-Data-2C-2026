INSERT INTO dokter (id_dokter, nama_dokter,
spesialisasi) VALUES
(1, 'Dr. Andi', 'Umum'),
(2, 'Dr. Budi', 'Gigi');

INSERT INTO pasien (id_pasien, nama_pasien, tanggal_lahir, no_telepon) VALUES
(1, 'Budi', '2001-05-10', '08123456789'),
(2, 'Sari', '2002-08-20', '08234567890');

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1, 1, 1, '2026-04-01', 'Demam'),
(2, 2, 2, '2026-04-02', 'Sakit gigi');h

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(3, 1, 99, '2026-04-03', 'Flu');
