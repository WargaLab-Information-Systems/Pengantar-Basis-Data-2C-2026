create database pelanggan;
use pelanggan;

create table pelanggan_setia (
id int primary key,
nama varchar(100),
nomor_identitas int
);

alter table pelanggan_setia 
modify nomor_identitas varchar(20);
