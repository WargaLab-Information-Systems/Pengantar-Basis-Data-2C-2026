SELECT 
    m.nama_mahasiswa, 
    m.angkatan, 
    mk.nama_mk, 
    d.nama_dosen
FROM KRS AS k
INNER JOIN Mahasiswa AS m ON k.id_mahasiswa = m.id_mahasiswa
INNER JOIN Mata_Kuliah AS mk ON k.id_mata_kuliah = mk.id_mata_kuliah
INNER JOIN Dosen AS d ON mk.id_dosen = d.id_dosen
WHERE (m.angkatan BETWEEN 2023 AND 2025) AND (d.nama_dosen = 'Dr. Budi' OR d.nama_dosen = 'Prof. Siti')
ORDER BY m.angkatan DESC;