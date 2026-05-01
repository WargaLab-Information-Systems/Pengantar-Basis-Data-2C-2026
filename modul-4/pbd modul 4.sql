CREATE TABLE mata_kuliah (
    id_mata_kuliah VARCHAR(10) PRIMARY KEY,
    nama_mk VARCHAR(100),
    sks INT
);

CREATE TABLE dosen (
    id_dosen INT PRIMARY KEY,
    nama_dosen VARCHAR(100),
    bidang_keahlian VARCHAR(50),
    id_mata_kuliah VARCHAR(10),
    FOREIGN KEY (id_mata_kuliah) REFERENCES mata_kuliah(id_mata_kuliah)
);

CREATE TABLE mahasiswa (
    id_mahasiswa INT PRIMARY KEY,
    nama_mahasiswa VARCHAR(100),
    program_studi VARCHAR(100),
    angkatan INT
);

CREATE TABLE krs (
    id_krs INT PRIMARY KEY,
    id_mahasiswa INT,
    id_mata_kuliah VARCHAR(10),
    semester_ambil INT,
    FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa),
    FOREIGN KEY (id_mata_kuliah) REFERENCES mata_kuliah(id_mata_kuliah)
);

INSERT INTO mata_kuliah VALUES
('MK01','Algoritma & Pemrograman',4),
('MK02','Basis Data Terdistribusi',3),
('MK03','Struktur Data',3),
('MK04','Jaringan Komputer',3),
('MK05','Kecerdasan Buatan',3),
('MK06','Sistem Informasi Akuntansi',2),
('MK07','Pemrograman Web Native',3),
('MK08','Keamanan Informasi',3),
('MK09','Etika Profesi IT',2),
('MK10','Administrasi Basis Data',3);

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

INSERT INTO dosen VALUES
(1,'Dr. Budi','Pemrograman','MK01'),
(2,'Prof. Siti','Basis Data','MK02'),
(3,'Dian, M.Kom','Pemrograman','MK03'),
(4,'Ir. Ahmad','Jaringan','MK04'),
(5,'Eko, S.T','Kecerdasan Buatan','MK05'),
(6,'Siska, M.Si','Sistem Informasi','MK06'),
(7,'Bambang, M.Kom','Pemrograman','MK07'),
(8,'Hadi, Ph.D','Keamanan Siber','MK08'),
(9,'Laila, M.T','Manajemen Proyek','MK09'),
(10,'Rina, M.T','Basis Data','MK10');

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

SELECT * FROM mata_kuliah;
SELECT * FROM mahasiswa;
SELECT * FROM dosen;
SELECT * FROM krs;

NO 1
SELECT 
    d.nama_dosen,
    d.bidang_keahlian,
    m.nama_mk
FROM dosen d
JOIN mata_kuliah m 
ON d.id_mata_kuliah = m.id_mata_kuliah
WHERE d.bidang_keahlian IN ('Pemrograman', 'Basis Data');


NO 2
SELECT 
    m.nama_mahasiswa,
    k.id_mata_kuliah
FROM mahasiswa AS m
LEFT JOIN krs AS k
    ON m.id_mahasiswa = k.id_mahasiswa;
    
NO 3
SELECT 
    m.nama_mahasiswa,
    mk.nama_mk,
    k.semester_ambil
FROM krs k
JOIN mahasiswa m 
    ON k.id_mahasiswa = m.id_mahasiswa
JOIN mata_kuliah mk 
    ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE k.semester_ambil BETWEEN 3 AND 5
ORDER BY k.semester_ambil ASC;
				
NO 4
SELECT 
    m.nama_mahasiswa,
    mk.nama_mk,
    mk.sks
FROM krs k
JOIN mahasiswa m 
    ON k.id_mahasiswa = m.id_mahasiswa
JOIN mata_kuliah mk 
    ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE m.program_studi = 'Sistem Informasi'
AND mk.sks > 2
ORDER BY mk.sks DESC, m.nama_mahasiswa ASC;						
    
NO 5
SELECT 
    m.nama_mahasiswa,
    m.angkatan,
    mk.nama_mk,
    d.nama_dosen
FROM krs k
JOIN mahasiswa m 
    ON k.id_mahasiswa = m.id_mahasiswa
JOIN mata_kuliah mk 
    ON k.id_mata_kuliah = mk.id_mata_kuliah
JOIN dosen d 
    ON mk.id_mata_kuliah = d.id_mata_kuliah
WHERE m.angkatan BETWEEN 2023 AND 2025
AND d.nama_dosen IN ('Dr. Budi', 'Prof. Siti')
ORDER BY m.angkatan DESC;