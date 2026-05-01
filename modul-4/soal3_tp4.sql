SELECT m.nama_mahasiswa, mk.nama_mk, k.semester_ambil
FROM mahasiswa m
JOIN krs k ON m.nim = k.nim
JOIN mata_kuliah mk ON k.id_mk = mk.id_mk
WHERE k.semester_ambil BETWEEN 3 AND 5
ORDER BY k.semester_ambil ASC;