CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    tanggal_periksa DATE,
    diagnosis VARCHAR(100),
    id_dokter INT,
    id_pasien INT,
    FOREIGN KEY (id_dokter)
        REFERENCES dokter(id_dokter),
    FOREIGN KEY (id_pasien)
        REFERENCES pasien(id_pasien)
    ON DELETE RESTRICT
);