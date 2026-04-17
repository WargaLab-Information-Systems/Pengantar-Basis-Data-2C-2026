USE db_tp1;

DROP TABLE IF EXISTS umpan_balik;

CREATE TABLE umpan_balik (
    id INT PRIMARY KEY,
    isi_komentar TEXT
);
DESCRIBE umpan_balik