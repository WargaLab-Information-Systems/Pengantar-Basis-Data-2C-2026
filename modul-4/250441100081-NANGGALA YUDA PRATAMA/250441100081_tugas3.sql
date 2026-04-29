SELECT 
    m.nama_mahasiswa, 
    mk.nama_mk, 
    k.semester_ambil
FROM KRS AS k
INNER JOIN Mahasiswa AS m ON k.id_mahasiswa = m.id_mahasiswa
INNER JOIN Mata_Kuliah AS mk ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE k.semester_ambil BETWEEN 3 AND 5
ORDER BY k.semester_ambil ASC;