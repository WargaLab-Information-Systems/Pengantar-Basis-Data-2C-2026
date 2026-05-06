SELECT nim, SUM(sks) AS Total_SKS
FROM krs
JOIN mata_kuliah ON krs.kode_mk = mata_kuliah.kode_mk
GROUP BY nim
HAVING SUM(sks) > 5;