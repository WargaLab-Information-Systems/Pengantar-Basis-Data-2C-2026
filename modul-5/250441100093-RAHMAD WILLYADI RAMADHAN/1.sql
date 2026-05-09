SELECT angkatan, COUNT(*) AS Total_Mahasiswa
FROM mahasiswa
GROUP BY angkatan
HAVING COUNT(*) > 1
ORDER BY Total_Mahasiswa DESC;