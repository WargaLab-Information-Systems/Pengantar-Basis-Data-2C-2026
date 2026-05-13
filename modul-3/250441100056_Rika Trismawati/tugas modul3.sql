CREATE DATABASE inventory_gudang
USE inventory_gudang

CREATE TABLE inventaris_gudang_pusat (
id_barang INT PRIMARY KEY,
nama_barang VARCHAR(100),
kode_sku VARCHAR(50),
kategori VARCHAR(50),
harga_satuan DECIMAL(15,2),
stok INT,
lokasi_rak VARCHAR(20),
status_qc VARCHAR(20)
);

INSERT INTO inventaris_gudang_pusat (id_barang, nama_barang, kode_sku, kategori, harga_satuan, stok, lokasi_rak, status_qc) VALUES
(101, 'Gaming Laptop G5', 'ELEC-442-X', 'Laptop', 15500000, 12, 'A-01', 'Lulus'),
(102, 'Wireless Mouse', 'ACC-101-Y', 'Aksesoris', 250000, 150, NULL, 'Lulus'),
(103, 'Ultra Wide Monitor', 'ELEC-881-X', 'Monitor', 7200000, 0, 'B-05', 'Pending'),
(104, 'Mechanical Keyboard', 'ACC-202-Z', 'Aksesoris', 1200000, 45, 'B-02', 'Lulus'),
(105, 'Office Chair Pro', 'FURN-991-P', 'Furniture', 3500000, 8, 'C-01', NULL),
(106, 'USB-C Hub 10-in-1', 'ACC-303-X', 'Aksesoris', 850000, 0, NULL, 'Gagal'),
(107, 'Smartphone Z Flip', 'ELEC-112-Y', 'Smartphone', 14000000, 4, 'A-03', 'Lulus'),
(108, 'Standing Desk', 'FURN-882-Q', 'Furniture', 5000000, 15, 'C-02', 'Lulus'),
(109, 'Headset Gaming RGB', 'ACC-404-X', 'Aksesoris', 1100000, 25, NULL, 'Lulus'),
(110, 'Thunderbolt Cable', 'ACC-505-Z', 'Aksesoris', 450000, 100, 'B-03', 'Lulus');

-- nomor 1
SELECT nama_barang, kategori, kode_sku FROM inventaris_gudang_pusat WHERE lokasi_rak IS NULL AND stok>0 AND status_qc = "Lulus"

-- nomor 2
SELECT DISTINCT kategori FROM inventaris_gudang_pusat WHERE kode_sku LIKE "ELEC%X" AND harga_satuan > 5000000

-- nomor 3
SELECT 
    nama_barang,
    stok,
    CASE
        WHEN stok = 0 AND kategori = 'Aksesoris' THEN 'Urgent - Restock Segera'
        WHEN stok < 10 AND stok <> 0 AND kategori IN ('Laptop', 'Smartphone') THEN 'High Priority'
        WHEN stok BETWEEN 10 AND 50 THEN 'Medium'
        ELSE 'Aman'
    END 
AS prioritas_restock FROM inventaris_gudang_pusat ORDER BY stok ASC;

-- nomor 4
SELECT * FROM inventaris_gudang_pusat WHERE lokasi_rak LIKE 'B%' 
AND NOT (harga_satuan BETWEEN 1000000 AND 5000000) AND kategori <> 'Monitor';
  
-- nomor 5
SELECT nama_barang, harga_satuan, status_qc FROM inventaris_gudang_pusat WHERE kategori <> 'Furniture' AND status_qc = 'Lulus'
ORDER BY harga_satuan DESC LIMIT 3;
