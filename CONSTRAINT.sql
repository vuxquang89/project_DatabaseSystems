/*Them rang buoc cho bang DanhMuc*/
ALTER TABLE DanhMuc
ALTER COLUMN TenDanhMuc NVARCHAR(150) NOT NULL;
GO

/*Them rang buoc cho bang ThanhVien*/
ALTER TABLE ThanhVien
ALTER COLUMN TenThanhVien NVARCHAR(50) NOT NULL;
GO

ALTER TABLE Thanhvien
ALTER COLUMN Email VARCHAR(30) NOT NULL;
GO

ALTER TABLE ThanhVien
ALTER COLUMN MatKhau VARCHAR(30) NOT NULL;
GO

ALTER TABLE ThanhVien
ADD CHECK(LEN(SDT) <= 10);
GO

ALTER TABLE ThanhVien
ALTER COLUMN GioiHanQuyen INT NOT NULL;
GO

ALTER TABLE Thanhvien
ADD CONSTRAINT FK_MaQuanLy_ThanhVien
FOREIGN KEY (MaQuanLy) REFERENCES ThanhVien(MaThanhVien);
GO

/*Them rang buoc cho bang ChuyenMuc*/

ALTER TABLE ChuyenMuc
ALTER COLUMN TenChuyenMuc NVARCHAR(255) NOT NULL;
GO

ALTER TABLE ChuyenMuc
ADD FOREIGN KEY (MaDanhMuc) REFERENCES DanhMuc(MaDanhMuc);
GO

ALTER TABLE ChuyenMuc
ADD FOREIGN KEY (MaThanhVien) REFERENCES ThanhVien(MaThanhVien); 
GO

/*Them rang buoc cho bang TinTuc*/

ALTER TABLE TinTuc
ADD FOREIGN KEY (MaChuyenMuc) REFERENCES ChuyenMuc(MaChuyenMuc);
GO

ALTER TABLE TinTuc
ALTER COLUMN TieuDe NVARCHAR(255) NOT NULL;
GO

ALTER TABLE TinTuc
ALTER COLUMN TomTat NTEXT NOT NULL;
GO

ALTER TABLE TinTuc
ALTER COLUMN NoiDung NTEXT NOT NULL;
GO

ALTER TABLE TinTuc
ADD CONSTRAINT df_SoLuocXem
DEFAULT 0 FOR SoLuocXem;
GO

ALTER TABLE TinTuc
ADD CONSTRAINT df_NoiBat
DEFAULT 0 FOR NoiBat;
GO

ALTER TABLE TinTuc
ADD CONSTRAINT df_NgayDang
DEFAULT GETDATE() FOR NgayDang;
GO

/*Them rang buoc cho bang BinhLuan*/
ALTER TABLE BinhLuan
ADD CONSTRAINT FK_MaThanhVien_BL
FOREIGN KEY (MaThanhVien) REFERENCES ThanhVien(MaThanhVien);
GO

ALTER TABLE BinhLuan
ADD CONSTRAINT FK_MaTinTuc_BL
FOREIGN KEY (MaTinTuc) REFERENCES TinTuc(MaTinTuc);
GO

ALTER TABLE BinhLuan
ALTER COLUMN NoiDung NVARCHAR(255) NOT NULL;
GO

ALTER TABLE BinhLuan
ADD CONSTRAINT df_NgayBinhLuan
DEFAULT GETDATE() FOR ThoiGian;
GO

ALTER TABLE BinhLuan
ADD CONSTRAINT df_HienTrang
DEFAULT 0 FOR HienTrang;
GO
