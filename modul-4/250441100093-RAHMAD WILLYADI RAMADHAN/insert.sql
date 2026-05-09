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