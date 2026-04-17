SELECT *
FROM inventaris_gudang_pusat
WHERE lokasi_rak LIKE 'B%'
  AND (harga_satuan < 1000000 OR harga_satuan > 5000000)
  AND kategori != 'Monitor';