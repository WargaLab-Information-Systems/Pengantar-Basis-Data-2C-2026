CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    
    CONSTRAINT fk_pasien
        FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,
    
    CONSTRAINT fk_dokter
        FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter)
        ON DELETE RESTRICT
);


INSERT INTO rekam_medis VALUES
(1, 1, 1, '2026-04-01', 'Demam'),
(2, 2, 2, '2026-04-02', 'Flu');

TRUNCATE TABLE rekam_medis;

TRUNCATE TABLE pasien;