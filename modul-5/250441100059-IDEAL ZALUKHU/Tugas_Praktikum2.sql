SELECT
    MIN(sks) AS SKS_Minimal,
    MAX(sks) AS SKS_Maksimal,
    AVG(sks) AS Rata_Rata_SKS,
    COUNT(kode_mk) AS Total_Mata_Kuliah
FROM mata_kuliah;