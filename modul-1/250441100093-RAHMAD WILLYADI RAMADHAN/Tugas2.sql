use db_perpustakaan;

create table pelanggan_setia (
nomor_identitas INT
);

describe pelanggan_setia;

alter table pelanggan_setia 
modify nomor_identitas VARCHAR(20);

