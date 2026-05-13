						-- 1
CREATE DATABASE sehatbersama
USE sehatbersama

DROP DATABASE sehatbersama

CREATE TABLE dokter(
id_dokter INT AUTO_INCREMENT PRIMARY KEY,
nama_dokter VARCHAR(100),
spesialisasi VARCHAR(100)
);

CREATE TABLE pasien (
id_pasien INT AUTO_INCREMENT PRIMARY KEY,
nama_pasien VARCHAR(100),
tanggal_lahir DATE,
no_telepon VARCHAR(15)
);

CREATE TABLE rekam_medis (
id_rekam INT AUTO_INCREMENT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,
    
FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);
DROP TABLE rekam_medis;
							-- 2

INSERT INTO dokter (nama_dokter, spesialisasi) VALUES 
("Dr. Rika Trismawati", "Spesialis Hati"),
("Dr. Ravi Maulana", "Spesialis Jantung");

SELECT * FROM dokter

INSERT INTO pasien (nama_pasien, tanggal_lahir, no_telepon) VALUES 
("rika", "2006-09-24", "085954085650"), 
("Ravi", "2003-07-21", "081332968997");
select * from pasien
 
INSERT INTO pasien (no_telepon, nama_pasien, tanggal_lahir) VALUES 
("085954085650", "Rika", "2006-09-24"); --

SELECT * FROM pasien

INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1,1,"2026-04-05","Hati sakit kurang anuuu"),
(2,2,"2026-04-04","Gatau diagnosanya");

SELECT * FROM rekam_medis

INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1,3,2026-04-03, "Diagnosa salah");

SELECT * FROM rekam_medis

							-- 3
SELECT * FROM pasien 
UPDATE pasien SET no_telepon="081335467351" WHERE id_pasien=2; 


UPDATE pasien SET tanggal_lahir="2002-09-24" WHERE id_pasien=1; 
UPDATE pasien SET nama_pasien="varisil" WHERE id_pasien=1; 


SELECT * FROM dokter 
UPDATE dokter SET spesialisasi="Spesialis Mata" WHERE id_dokter=1; 
SELECT * FROM rekam_medis 

DELETE FROM rekam_medis WHERE id_rekam=2; 

							-- 4
			
DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
id_rekam INT AUTO_INCREMENT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,

FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT, 
FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);

INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1, 1, "2026-04-01", "Cakit"),
(2, 1, "2026-04-02", "Atit");

SELECT * FROM rekam_medis 






DELETE FROM dokter WHERE id_dokter=1;


SELECT * FROM dokter 


							-- 5

DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
id_rekam INT AUTO_INCREMENT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,
    
FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);

INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1, 2, "2026-04-05", "Pusing"),
(2, 2, "2026-04-06", "Demam");

SELECT * FROM rekam_medis 
TRUNCATE TABLE rekam_medis; 
SELECT * FROM pasien
TRUNCATE TABLE pasien; 