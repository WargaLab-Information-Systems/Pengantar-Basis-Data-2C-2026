SELECT 
    mk.nama_mk, 
    mk.sks, 
    d.nama_dosen
FROM Mata_Kuliah AS mk
INNER JOIN Dosen AS d ON mk.id_dosen = d.id_dosen
WHERE d.bidang_keahlian = 'Pemrograman' OR d.bidang_keahlian = 'Basis Data';