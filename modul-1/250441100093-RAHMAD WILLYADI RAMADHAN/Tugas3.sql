use db_perpustakaan;

create table transaksi_harian (
hari_1 BIGINT,
hari_2 BIGINT
);

INSERT INTO transaksi_harian (hari_1,hari_2)
VALUES (10000,60000);
select * from transaksi_harian; 

describe transaksi_harian;

truncate transaksi_harian;

drop table transaksi_harian;


