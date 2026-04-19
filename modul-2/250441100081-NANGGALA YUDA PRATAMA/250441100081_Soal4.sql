CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);

INSERT INTO rekam_medis VALUES (504, 101, 2, '2024-05-05', 'Alergi'), (505, 102, 2, '2024-05-06', 'Cek Rutin');

DELETE FROM dokter WHERE id_dokter = 2;
