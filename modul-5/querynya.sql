CREATE TABLE mahasiswa (
nim CHAR(5) PRIMARY KEY,
nama VARCHAR(100),
angkatan YEAR,
jurusan VARCHAR(50)
);

CREATE TABLE dosen (
id_dosen INT PRIMARY KEY,
nama_dosen VARCHAR(100)
);

CREATE TABLE mata_kuliah (
kode_mk CHAR(4) PRIMARY KEY,
nama_mk VARCHAR(100),
sks INT,
id_dosen INT,
FOREIGN KEY (id_dosen) REFERENCES dosen(id_dosen)
);

CREATE TABLE krs (
id_krs INT PRIMARY KEY,
nim CHAR(5),
kode_mk CHAR(4),
semester INT,
FOREIGN KEY (nim) REFERENCES mahasiswa(nim),
FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk)
);

CREATE TABLE nilai (
id_nilai INT PRIMARY KEY,
nim CHAR(5),
kode_mk CHAR(4),
nilai_angka INT,
nilai_huruf CHAR(1),
FOREIGN KEY (nim) REFERENCES mahasiswa(nim),
FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk)
);

INSERT INTO mahasiswa VALUES
('21001', 'Andi Saputra', 2021, 'Teknik Informatika'),
('22001', 'Budi Santoso', 2022, 'Sistem Informasi'),
('22002', 'Citra Dewi', 2022, 'Teknik Informatika'),
('23001', 'Dewi Lestari', 2023, 'Sistem Informasi'),
('23002', 'Eko Prasetyo', 2023, 'Teknik Informatika'),
('24001', 'Fajar Hidayat', 2024, 'Sistem Informasi'),
('24002', 'Gina Putri', 2024, 'Teknik Informatika'),
('24003', 'Hendra Wijaya', 2024, 'Sistem Informasi'),
('25001', 'Indra Mahendra', 2025, 'Teknik Informatika'),
('25002', 'Joko Purwanto', 2025, 'Sistem Informasi'),
('25003', 'Kiara Sabrina', 2025, 'Teknik Informatika'),
('25004', 'Laura Mala', 2025, 'Sistem Informasi');

INSERT INTO dosen VALUES
(1, 'Dr. Ahmad'),
(2, 'Prof. Budi'),
(3, 'Siti Rahma, M.Kom'),
(4, 'Rudi Hartono, M.T'),
(5, 'Lina Kusuma, M.Kom');

INSERT INTO mata_kuliah VALUES
('MK01', 'Pengantar Basis Data', 3, 1),
('MK02', 'Pemrograman Berbasis Web', 3, 2),
('MK03', 'Desain Manajemen Jaringan', 2, 3),
('MK04', 'Sistem Operasi', 3, 1),
('MK05', 'Algoritma dan Dasar Pemrograman', 2, 2),
('MK06', 'Kecerdasan Buatan', 3, 4),
('MK07', 'Data Mining', 2, 5);

INSERT INTO krs VALUES
(1, '21001', 'MK01', 1),
(2, '22001', 'MK01', 1),
(3, '22001', 'MK02', 2),
(4, '22002', 'MK02', 2),
(5, '23001', 'MK03', 1),
(6, '23002', 'MK04', 3),
(7, '24001', 'MK02', 1),
(8, '24002', 'MK03', 2),
(9, '24003', 'MK01', 3),
(10, '25001', 'MK05', 2),
(11, '25002', 'MK06', 3),
(12, '25003', 'MK07', 1),
(13, '25004', 'MK01', 2);

INSERT INTO nilai VALUES
(1, '21001', 'MK01', 82, 'A'),
(2, '22001', 'MK01', 85, 'A'),
(3, '22001', 'MK02', 78, 'B'),
(4, '22002', 'MK02', 80, 'A'),
(5, '23001', 'MK03', 75, 'B'),
(6, '23002', 'MK04', 88, 'A'),
(7, '24001', 'MK02', 90, 'A'),
(8, '24002', 'MK03', 77, 'B'),
(9, '24003', 'MK01', 84, 'A'),
(10, '25001', 'MK05', 79, 'B'),
(11, '25002', 'MK06', 83, 'A'),
(12, '25003', 'MK07', 76, 'B'),
(13, '25004', 'MK01', 81, 'A');