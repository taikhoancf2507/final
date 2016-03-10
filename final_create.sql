-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:53:43.335




-- tables
-- Table: MaPhong
CREATE TABLE MaPhong (
    id int  NOT NULL,
    name varchar(255)  NOT NULL,
    CONSTRAINT MaPhong_pk PRIMARY KEY  (id)
)
;





-- Table: TNhanVien
CREATE TABLE TNhanVien (
    MaNV char(25)  NOT NULL,
    TenNV varchar(255)  NOT NULL,
    Ngaysinh datetime  NOT NULL,
    gioitinh varchar(10)  NOT NULL,
    email varchar(25)  NOT NULL,
    mucluong varchar(25)  NOT NULL,
    Maphong varchar(25)  NOT NULL,
    CONSTRAINT TNhanVien_pk PRIMARY KEY  (Maphong)
)
;





-- Table: TPHONGBAN
CREATE TABLE TPHONGBAN (
    MaPhong varchar(25)  NOT NULL,
    Tenphong varchar(25)  NOT NULL,
    TNhanVien_Maphong varchar(25)  NOT NULL,
    CONSTRAINT TPHONGBAN_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TPHONGBAN_TNhanVien (table: TPHONGBAN)

ALTER TABLE TPHONGBAN ADD CONSTRAINT TPHONGBAN_TNhanVien 
    FOREIGN KEY (TNhanVien_Maphong)
    REFERENCES TNhanVien (Maphong)
;





-- End of file.

