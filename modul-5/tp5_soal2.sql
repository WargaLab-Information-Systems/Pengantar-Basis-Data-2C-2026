SELECT 
MIN(sks) AS sks_minimal,
MAX(sks) AS sks_maksimal,
AVG(sks) AS rata_rata_sks,
COUNT(*) AS total_mata_kuliah
FROM mata_kuliah;