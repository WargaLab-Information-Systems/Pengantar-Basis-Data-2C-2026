DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis VARCHAR(200),

    FOREIGN KEY (id_pasien)
    REFERENCES pasien(id_pasien)
    ON DELETE RESTRICT,

    FOREIGN KEY (id_dokter)
    REFERENCES dokter(id_dokter)
    ON DELETE RESTRICT
);

INSERT INTO rekam_medis VALUES
(1,1,2,'2026-04-05','Pusing'),
(2,2,2,'2026-04-06','Radang');

TRUNCATE TABLE rekam_medis;

TRUNCATE TABLE pasien;