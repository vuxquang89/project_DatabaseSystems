/*Liệt kê danh sách các danh mục gồm mã và tên danh mục*/

SELECT * FROM DanhMuc;
GO


/*Liệt kê các bản tin của ngày 11/09/2021 bao gồm mã tin tức, tiêu đề, tóm tắt, mã danh mục, ngày đăng*/

SELECT MaTinTuc, TieuDe, TomTat, NgayDang 
FROM TinTuc 
WHERE convert(varchar,NgayDang,103) = '11/09/2021'
ORDER BY NgayDang DESC;
GO


/*Hiển thị các bản tin liên quan đến dịch Covid*/

SELECT MaTinTuc, TieuDe, TomTat, NgayDang
FROM TinTuc
WHERE TieuDe LIKE '%Covid%'
ORDER BY NgayDang DESC;
GO


/*Hiển thị các bản tin thuộc chuyên mục Dân sinh của ngày 11/09/2021 
bao gồm mã tin tức, tiêu đề, tóm tắt, tên chuyên mục, ngày đăng*/

SELECT MaTinTuc, TieuDe, TomTat, TenChuyenMuc, NgayDang
FROM TinTuc t, ChuyenMuc c
WHERE t.MaChuyenMuc = c.MaChuyenMuc AND t.MaChuyenMuc = 'DANSINH' AND CONVERT(VARCHAR,t.NgayDang,103) = '11/09/2021'
ORDER BY NgayDang DESC;
GO

/*Liệt kê tất cả các danh mục và chuyên mục */

select tenchuyenmuc, tendanhmuc from chuyenmuc full join danhmuc on chuyenmuc.madanhmuc = danhmuc.madanhmuc;
GO

/*Hiển thị danh sách các thành viên có địa chỉ ở "Cầu Giấy", "Thái Bình", "Tân Phú". 
Thông tin bao gồm mã thành viên, tên thành viên, email, địa chỉ, SDT.*/

Select * from thanhvien where diachi in (N'Cầu Giấy', N'Thái Bình', N'Tân Phú');
GO

/*Hiển thị danh sách các bản tin bao gồm mã tin tức, tiêu đề, tóm tắt, ngày đăng, số lược bình luận. 
Sắp xếp giảm dần theo thời gian đăng bài*/

WITH tb_countBL
AS
(
    SELECT MaTinTuc, COUNT(MaTinTuc) cTinTuc FROM BinhLuan GROUP BY MaTinTuc
)

SELECT t.MaTinTuc, TieuDe, TomTat, NgayDang, c.cTinTuc SoLuocBinhLuan
FROM TinTuc t, tb_countBL c
WHERE t.MaTinTuc = c.MaTinTuc
ORDER BY NgayDang DESC;
GO




