CREATE TABLE transaksi_harian (
id INT,
total DECIMAL
);

INSERT INTO transaksi_harian VALUES (1, 10000);

TRUNCATE TABLE transaksi_harian;

DROP TABLE transaksi_harian;

SELECT * FROM transaksi_harian

describe transaksi_harian;