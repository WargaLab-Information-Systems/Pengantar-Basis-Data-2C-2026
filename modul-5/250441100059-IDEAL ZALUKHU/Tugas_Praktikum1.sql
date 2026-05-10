SELECT 
    angkatan,
    COUNT(nim) AS Total_Mahasiswa
FROM mahasiswa
GROUP BY angkatan
HAVING COUNT(nim) > 1
ORDER BY Total_Mahasiswa DESC;