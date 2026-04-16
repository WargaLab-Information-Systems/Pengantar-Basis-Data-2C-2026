CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    tanggal_periksa DATE,
    diagnosis VARCHAR(100),
    id_dokter INT,
    id_pasien INT,
    FOREIGN KEY (id_dokter)
        REFERENCES dokter(id_dokter)
        ON DELETE CASCADE,
    FOREIGN KEY (id_pasien)
        REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT
);

INSERT INTO rekam_medis VALUES
(1, '2026-04-09', 'Flu', 1, 1),
(2, '2026-04-09', 'Demam', 1, 2);

DELETE from dokter
WHERE id_dokter = 1;    

SELECT * FROM rekam_medis;