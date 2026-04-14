CREATE TABLE pasien (
    id_pasien INT AUTO_INCREMENT PRIMARY KEY,
    nama_pasien VARCHAR(100)
);

CREATE TABLE dokter (
    id_dokter INT AUTO_INCREMENT PRIMARY KEY,
    nama_dokter VARCHAR(100),
    spesialisasi VARCHAR(100)
);

CREATE TABLE rekam_medis (
    id_rekam INT AUTO_INCREMENT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    diagnosa VARCHAR(100),
    tanggal DATE
);

INSERT INTO pasien (nama_pasien) VALUES
('Budi'),
('Siti');

INSERT INTO dokter (nama_dokter, spesialisasi) VALUES
('Dr. Santa', 'Umum'),
('Dr. Ali', 'Kulit');

INSERT INTO rekam_medis (id_pasien, id_dokter, diagnosa, tanggal) VALUES
(1, 2, 'Flu', '2025-01-10'),
(2, 2, 'Demam', '2025-01-11');

SELECT * FROM rekam_medis
WHERE id_dokter = 2;

DELETE FROM rekam_medis
WHERE id_dokter = 2;

DELETE FROM dokter
WHERE id_dokter = 2;

SELECT * FROM rekam_medis WHERE id_dokter = 2;
