SELECT k.nim,
SUM(mk.sks) AS total_sks
FROM krs k
JOIN mata_kuliah mk ON k.kode_mk = mk.kode_mk
GROUP BY k.nim
HAVING SUM(mk.sks) > 5;