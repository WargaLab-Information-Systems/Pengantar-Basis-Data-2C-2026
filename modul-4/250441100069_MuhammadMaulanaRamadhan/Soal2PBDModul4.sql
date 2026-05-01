SELECT m.nama_mahasiswa, k.id_mk
FROM mahasiswa m
LEFT JOIN krs k ON m.nim = k.nim;