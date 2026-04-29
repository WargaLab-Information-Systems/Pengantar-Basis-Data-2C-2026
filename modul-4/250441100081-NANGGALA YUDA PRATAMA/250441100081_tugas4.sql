SELECT 
    m.nama_mahasiswa, 
    mk.nama_mk, 
    mk.sks
FROM KRS AS k
INNER JOIN Mahasiswa AS m ON k.id_mahasiswa = m.id_mahasiswa
INNER JOIN Mata_Kuliah AS mk ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE m.program_studi = 'Sistem Informasi' AND mk.sks > 2
ORDER BY mk.sks DESC, m.nama_mahasiswa ASC;