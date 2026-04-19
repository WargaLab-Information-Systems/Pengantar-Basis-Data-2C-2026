SELECT nama_barang, kategori, kode_sku
FROM inventaris_gudang_pusat
WHERE lokasi_rak IS NULL
AND stok > 0
AND status_qc = 'Lulus';