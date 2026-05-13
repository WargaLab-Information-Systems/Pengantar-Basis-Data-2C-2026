

CREATE DATABASE siakad1;
USE siakad1;

DROP DATABASE siakad1;

-- Tabel Mahasiswa
CREATE TABLE mahasiswa (
    nim INT PRIMARY KEY,
    nama VARCHAR(100),
    angkatan INT,
    jurusan VARCHAR(100)
);

-- Tabel Dosen
CREATE TABLE dosen (
    id_dosen INT PRIMARY KEY,
    nama_dosen VARCHAR(100)
);

-- Tabel Mata Kuliah
CREATE TABLE mata_kuliah (
kode_mk VARCHAR(10) PRIMARY KEY,
nama_mk VARCHAR(100),
sks INT,
id_dosen INT,
FOREIGN KEY (id_dosen) REFERENCES dosen(id_dosen)
);

-- Tabel KRS
CREATE TABLE krs (
id_krs INT PRIMARY KEY,
nim INT,
kode_mk VARCHAR(10),
semester INT,
FOREIGN KEY (nim) REFERENCES mahasiswa(nim),
FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk)
);

-- Tabel Nilai
CREATE TABLE nilai (
    id_nilai INT PRIMARY KEY,
    nim INT,
    kode_mk VARCHAR(10),
    nilai_angka INT,
    nilai_huruf CHAR(2),
    FOREIGN KEY (nim) REFERENCES mahasiswa(nim),
    FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk)
);


-- Mahasiswa
INSERT INTO mahasiswa VALUES
(21001,'Andi Saputra',2021,'Teknik Informatika'),
(22001,'Budi Santoso',2022,'Sistem Informasi'),
(22002,'Citra Dewi',2022,'Teknik Informatika'),
(23001,'Dewi Lestari',2023,'Sistem Informasi'),
(23002,'Eko Prasetyo',2023,'Teknik Informatika'),
(24001,'Fajar Hidayat',2024,'Sistem Informasi'),
(24002,'Gina Putri',2024,'Teknik Informatika'),
(24003,'Hendra Wijaya',2024,'Sistem Informasi'),
(25001,'Indra Mahendra',2025,'Teknik Informatika'),
(25002,'Joko Purwanto',2025,'Sistem Informasi'),
(25003,'Kiara Sabrina',2025,'Teknik Informatika'),
(25004,'Laura Mala',2025,'Sistem Informasi');

-- Dosen
INSERT INTO dosen VALUES
(1,'Dr. Ahmad'),
(2,'Prof. Budi'),
(3,'Siti Rahma, M.Kom'),
(4,'Rudi Hartono, M.T'),
(5,'Lina Kusuma, M.Kom');

-- Mata Kuliah
INSERT INTO mata_kuliah VALUES
('MK01','Pengantar Basis Data',3,1),
('MK02','Pemrograman Berbasis Web',3,2),
('MK03','Desain Manajemen Jaringan',2,3),
('MK04','Sistem Operasi',3,1),
('MK05','Algoritma dan Dasar Pemrograman',2,2),
('MK06','Kecerdasan Buatan',3,4),
('MK07','Data Mining',2,5);

-- KRS
INSERT INTO krs VALUES
(1,21001,'MK01',1),
(2,22001,'MK01',1),
(3,22001,'MK02',2),
(4,22002,'MK02',2),
(5,23001,'MK03',1),
(6,23002,'MK04',3),
(7,24001,'MK02',1),
(8,24002,'MK03',2),
(9,24003,'MK01',3),
(10,25001,'MK05',2),
(11,25002,'MK06',3),
(12,25003,'MK07',1),
(13,25004,'MK01',2);

-- Nilai
INSERT INTO nilai VALUES
(1,21001,'MK01',82,'A'),
(2,22001,'MK01',85,'A'),
(3,22001,'MK02',78,'B'),
(4,22002,'MK02',80,'A'),
(5,23001,'MK03',75,'B'),
(6,23002,'MK04',88,'A'),
(7,24001,'MK02',90,'A'),
(8,24002,'MK03',77,'B'),
(9,24003,'MK01',84,'A'),
(10,25001,'MK05',79,'B'),
(11,25002,'MK06',83,'A'),
(12,25003,'MK07',76,'B'),
(13,25004,'MK01',81,'A');


-- SOAL 1

SELECT angkatan,
COUNT(*) AS Total_Mahasiswa
FROM mahasiswa
GROUP BY angkatan
HAVING COUNT(*) > 1
ORDER BY Total_Mahasiswa DESC;



-- SOAL 2

SELECT
    MIN(sks) AS SKS_Minimal,
    MAX(sks) AS SKS_Maksimal,
    AVG(sks) AS Rata_Rata_SKS,
    COUNT(*) AS Total_Mata_Kuliah
FROM mata_kuliah;



-- SOAL 3

SELECT m.nim,m.nama,
SUM(mk.sks) AS Total_SKS
FROM mahasiswa m
JOIN krs k ON m.nim = k.nim
JOIN mata_kuliah mk ON k.kode_mk = mk.kode_mk
WHERE k.semester IN (1,3)
GROUP BY m.nim, m.nama;



-- SOAL 4

SELECT k.nim,
SUM(mk.sks) AS Total_SKS
FROM krs k
JOIN mata_kuliah mk ON k.kode_mk = mk.kode_mk
GROUP BY k.nim
HAVING SUM(mk.sks) > 5;



-- SOAL 5

SELECT sks,
COUNT(*) AS Total_MK,
SUM(sks) AS Total_Akumulasi_SKS
FROM mata_kuliah
GROUP BY sks
HAVING COUNT(*) > 1;