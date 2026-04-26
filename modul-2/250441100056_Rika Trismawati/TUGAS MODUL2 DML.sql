						-- 1
CREATE DATABASE sehatbersama
USE sehatbersama

DROP DATABASE sehatbersama

CREATE TABLE dokter(
id_dokter INT AUTO_INCREMENT PRIMARY KEY,
nama_dokter VARCHAR(100),
spesialisasi VARCHAR(100)
);

DESCRIBE dokter;

CREATE TABLE pasien (
id_pasien INT AUTO_INCREMENT PRIMARY KEY,
nama_pasien VARCHAR(100),
tanggal_lahir DATE,
no_telepon VARCHAR(15)
);
DESCRIBE pasien;

CREATE TABLE rekam_medis (
id_rekam INT AUTO_INCREMENT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,
    
FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);
DESCRIBE rekam_medis;
DROP TABLE rekam_medis;
							-- 2

INSERT INTO dokter (nama_dokter, spesialisasi) VALUES 
("Dr. Rika Trismawati", "Spesialis Hati"),
("Dr. Ravi Maulana", "Spesialis Jantung");

SELECT * FROM dokter

INSERT INTO pasien (nama_pasien, tanggal_lahir, no_telepon) VALUES 
("rika", "2006-09-24", "085954085650"), 
("Ravi", "2003-07-21", "081332968997");

SELECT * FROM pasien

INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1,1,"2026-04-05","Hati sakit kurang anuuu"),
(2,2,"2026-04-04","Gatau diagnosanya");

SELECT * FROM rekam_medis

INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1,3,2026-04-03, "Diagnosa salah");

SELECT * FROM rekam_medis

							-- 3
SELECT * FROM pasien -- ini jalanin dulu baru updatenya biar keliatan bedanya, abis di update di jalanin lagi ini
UPDATE pasien SET no_telepon="081335467351" WHERE id_pasien=2; -- ini mengubah no pasien dengan id 2

SELECT * FROM dokter -- yang ini juga sama kayak yang di atas ini
UPDATE dokter SET spesialisasi="Spesialis Mata" WHERE id_dokter=1; -- ini mengubah spedialisasi dokter dengan id 1

SELECT * FROM rekam_medis -- ini juga sama
DELETE FROM rekam_medis WHERE id_rekam=2; -- ini menghapus data dari rekam_medis dengan id 2

							-- 4
			
DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
id_rekam INT AUTO_INCREMENT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,

-- on delete cascade, itu ketika data pasien/dokter nya dihapus/diubah, di tabel ini itu data pasien/dokternya ikut kehapus/keubah
-- on delete restrict, dia menolak,, jadi data pasien yang udah ada di tabel ini gabisa dihapus atau diubah, pasti error
     
FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT, 
FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE CASCADE
);

-- menambahkan data rekam medis yang baru dengan id dokter yang sama, yaitu dengan id 1
INSERT INTO rekam_medis (id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1, 1, "2026-04-01", "Cakit"),
(2, 1, "2026-04-02", "Atit");

SELECT * FROM rekam_medis -- cek

-- disini menghapus data dokter dengan id 1, nah yang di rekam medis ikut kehapus soalnya dia pake ON DELETE CASCADE
DELETE FROM dokter WHERE id_dokter=1;

SELECT * FROM dokter -- abisnya run ini,, run lagi SELECT * FROM rekam_medis di atasnya ini, klo tabel nya kosong berarti benar


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

SELECT * FROM rekam_medis -- ini run dulu yah
TRUNCATE TABLE rekam_medis; -- abis run ini,, jalanin lagi select di atasnya itu

SELECT * FROM pasien
TRUNCATE TABLE pasien; -- disini bakalan error,, soalnya pernah ke record id nya pernah dipake di tabel rekam_medis, 
-- meskipun di rekam_medis datanya sudah di hapus dengan truncate,, tapi recordnya tetap
-- kecuali tabelnya di drop baru data pasien ini bisa di truncate juga
