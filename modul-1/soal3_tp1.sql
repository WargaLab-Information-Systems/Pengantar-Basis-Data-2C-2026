USE db_tp1;

DROP TABLE IF EXISTS transaksi_harian;

CREATE TABLE transaksi_harian (
    id INT,
    jumlah INT
);
DESCRIBE transaksi_harian