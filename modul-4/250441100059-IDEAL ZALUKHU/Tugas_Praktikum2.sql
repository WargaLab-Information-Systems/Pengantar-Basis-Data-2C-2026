SELECT 
    m.nama_mahasiswa, 
    k.id_mata_kuliah
FROM Mahasiswa AS m
LEFT JOIN KRS AS k ON m.id_mahasiswa = k.id_mahasiswa;