SELECT m.nama_mahasiswa, mk.nama_mk, mk.sks
FROM mahasiswa m
JOIN krs k ON m.nim = k.nim
JOIN mata_kuliah mk ON k.id_mk = mk.id_mk
WHERE m.prodi = 'Sistem Informasi'
AND mk.sks > 2
ORDER BY mk.sks DESC, m.nama_mahasiswa ASC;