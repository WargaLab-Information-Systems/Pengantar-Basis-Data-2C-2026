SELECT m.nama_mahasiswa, mk.nama_mk, k.semester_ambil
FROM krs k
JOIN mahasiswa m ON k.nim = m.nim
JOIN mata_kuliah mk ON k.id_mk = mk.id_mk
WHERE k.semester_ambil BETWEEN 3 AND 5
ORDER BY k.semester_ambil ASC;