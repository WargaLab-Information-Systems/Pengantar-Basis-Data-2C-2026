SELECT angkatan,
COUNT(*) AS total_mahasiswa
FROM mahasiswa
GROUP BY angkatan
HAVING COUNT(*) > 1
ORDER BY Total_Mahasiswa DESC;