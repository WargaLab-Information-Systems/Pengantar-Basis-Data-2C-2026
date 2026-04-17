SELECT nama_barang,stok,
    CASE
        WHEN stok = 0 AND kategori = 'Aksesoris' THEN 'Urgent - Restock Segera'
        WHEN stok < 10 AND stok > 0 AND kategori IN ('Laptop', 'Smartphone') THEN 'High Priority'
        WHEN stok BETWEEN 10 AND 50 THEN 'Medium'
        ELSE 'Aman'
    END AS prioritas_restock
FROM inventaris_gudang_pusat
ORDER BY stok ASC;