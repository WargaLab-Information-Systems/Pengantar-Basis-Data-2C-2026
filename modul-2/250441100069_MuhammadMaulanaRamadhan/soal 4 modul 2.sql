DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATETIME,
    diagnosis VARCHAR(200),

    FOREIGN KEY (id_pasien)
    REFERENCES pasien(id_pasien)
    ON DELETE RESTRICT,

    FOREIGN KEY (id_dokter)
    REFERENCES dokter(id_dokter)
    ON DELETE CASCADE
);

INSERT INTO rekam_medis VALUES
(1,1,1,'2026-04-01','Demam'),
(2,2,1,'2026-04-02','Batuk');

DELETE FROM dokter
WHERE id_dokter = 1;

SELECT * FROM rekam_medis;