DROP TABLE IF EXISTS rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(255),
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2025-04-01', 'Demam'),
(2, 2, 2, '2025-04-02', 'Flu');

TRUNCATE TABLE rekam_medis;
