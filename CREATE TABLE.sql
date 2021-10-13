USE QLTinTuc;
GO
CREATE TABLE DanhMuc(
    MaDanhMuc VARCHAR(10) NOT NULL PRIMARY KEY,
    TenDanhMuc NVARCHAR(255)
);
GO

CREATE TABLE ChuyenMuc(
    MaChuyeMuc VARCHAR(10) NOT NULL PRIMARY KEY,
    TenChuyenMuc NVARCHAR(255),
    MaDanhMuc VARCHAR(10),
    MaThanhVien VARCHAR(15)
);
go

CREATE TABLE TinTuc(
    MaTinTuc INT IDENTITY(1,1) PRIMARY KEY,
    TieuDe NVARCHAR(255),
    TomTat NTEXT,
    NoiDung NTEXT,
    SoLuocXem INT,
    NoiBat INT,
    NgayDang DATETIME,
    NgayGo DATETIME,
    MaChuyenMuc VARCHAR(10)
);
GO

CREATE TABLE ThanhVien(
    MaThanhVien VARCHAR(15) NOT NULL PRIMARY KEY,
    TenThanhVien NVARCHAR(50),
    Email VARCHAR(30),
    MatKhau VARCHAR(30),
    DiaChi NVARCHAR(255),
    SDT VARCHAR(10),
    GioiHanQuyen INT,
    MaQuanLy VARCHAR(15)
);
GO

CREATE TABLE BinhLuan(
    MaThanhVien VARCHAR(15),
    MaTinTuc VARCHAR(10),
    NoiDung NVARCHAR(255),
    ThoiGian DATETIME,
    HienTrang BIT
);
GO