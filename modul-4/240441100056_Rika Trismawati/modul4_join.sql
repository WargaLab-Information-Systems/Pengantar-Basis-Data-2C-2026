CREATE DATABASE siakad;
USE siakad;

DROP DATABASE siakad;

-- Tabel DOSEN
CREATE TABLE dosen (
    id_dosen INT PRIMARY KEY,
    nama_dosen VARCHAR(100),
    bidang_keahlian VARCHAR(50)
);

-- Tabel MAHASISWA
CREATE TABLE mahasiswa (
    nim INT PRIMARY KEY,
    nama_mahasiswa VARCHAR(100),
    prodi VARCHAR(50),
    angkatan INT
);

-- Tabel MATA KULIAH
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
    semester_ambil INT,
    FOREIGN KEY (nim) REFERENCES mahasiswa(nim),
    FOREIGN KEY (kode_mk) REFERENCES mata_kuliah(kode_mk)
);

INSERT INTO dosen VALUES
(1, 'Dr. Budi', 'Pemrograman'),
(2, 'Prof. Siti', 'Basis Data'),
(3, 'Ir. Ahmad', 'Jaringan'),
(4, 'Dian, M.Kom', 'Pemrograman'),
(5, 'Eko, S.T', 'Kecerdasan Buatan'),
(6, 'Rina, M.T', 'Basis Data'),
(7, 'Hadi, Ph.D', 'Keamanan Siber'),
(8, 'Siska, M.SI', 'Sistem Informasi'),
(9, 'Bambang, M.Kom', 'Pemrograman'),
(10, 'Laila, M.T', 'Manajemen Proyek');

INSERT INTO mahasiswa VALUES
(2201, 'Dhani Kusuma', 'Sistem Informasi', 2022),
(2202, 'Rizky Pratama', 'Sistem Informasi', 2022),
(2301, 'Andi Wijaya', 'Sistem Informasi', 2023),
(2302, 'Bunga Citra', 'Sistem Informasi', 2023),
(2303, 'Dimas Anggara', 'Sistem Informasi', 2023),
(2401, 'Candra Gupta', 'Sistem Informasi', 2024),
(2402, 'Dedi Kurniawan', 'Sistem Informasi', 2024),
(2501, 'Farah Nabila', 'Sistem Informasi', 2025),
(2502, 'Gibran Rakabumi', 'Sistem Informasi', 2025),
(2503, 'Hani Safira', 'Sistem Informasi', 2025),
(2504, 'Irfan Bachdim', 'Sistem Informasi', 2025),
(2505, 'Joko Anwar', 'Sistem Informasi', 2025);

INSERT INTO mata_kuliah VALUES
('MK01', 'Algoritma & Pemrograman', 4, 1),
('MK02', 'Basis Data Terdistribusi', 3, 2),
('MK03', 'Struktur Data', 3, 4),
('MK04', 'Jaringan Komputer', 3, 3),
('MK05', 'Kecerdasan Buatan', 3, 5),
('MK06', 'Sistem Informasi Akuntansi', 2, 8),
('MK07', 'Pemrograman Web Native', 3, 9),
('MK08', 'Keamanan Informasi', 3, 7),
('MK09', 'Etika Profesi IT', 2, 10),
('MK10', 'Administrasi Basis Data', 3, 6);


INSERT INTO krs VALUES
(101, 2301, 'MK01', 3),
(102, 2301, 'MK02', 3),
(103, 2201, 'MK05', 5),
(104, 2302, 'MK04', 3),
(105, 2401, 'MK01', 1),
(106, 2402, 'MK07', 2),
(107, 2202, 'MK10', 5),
(108, 2303, 'MK06', 4),
(109, 2201, 'MK08', 6),
(110, 2401, 'MK03', 1);

-- Nomor 1--

SELECT  mk.nama_mk, mk.sks,d.nama_dosen
FROM mata_kuliah mk
JOIN dosen d 
ON mk.id_dosen = d.id_dosen
WHERE d.bidang_keahlian IN ('Pemrograman', 'Basis Data');

-- Nomor 2--
SELECT m.nama_mahasiswa,k.kode_mk
FROM mahasiswa AS m
RIGHT JOIN krs AS k ON m.nim = k.nim;

-- Nomor 3--

SELECT  m.nama_mahasiswa,mk.nama_mk,k.semester_ambil
FROM krs AS k
JOIN mahasiswa AS m ON k.nim = m.nim
JOIN mata_kuliah AS mk ON k.kode_mk = mk.kode_mk
WHERE k.semester_ambil BETWEEN 3 AND 5
ORDER BY k.semester_ambil ASC;

-- Nomor 4--
SELECT m.nama_mahasiswa,mk.nama_mk, mk.sks
FROM krs AS k
JOIN mahasiswa AS m ON k.nim = m.nim
JOIN mata_kuliah AS mk ON k.kode_mk = mk.kode_mk
WHERE m.prodi = 'Sistem Informasi' AND mk.sks > 2
ORDER BY mk.sks DESC, m.nama_mahasiswa ASC;

-- Nomor 5--
SELECT m.nama_mahasiswa,m.angkatan,mk.nama_mk,d.nama_dosen
FROM krs AS k
JOIN mahasiswa AS m ON k.nim = m.nim
JOIN mata_kuliah AS mk ON k.kode_mk = mk.kode_mk
JOIN dosen AS d ON mk.id_dosen = d.id_dosen
WHERE m.angkatan BETWEEN 2023 AND 2025
AND d.nama_dosen IN ('Dr. Budi', 'Prof. Siti')
ORDER BY m.angkatan DESC;

