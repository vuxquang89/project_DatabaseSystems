/*Hiển thị danh sách các thành viên quản lý nhiều hơn 1 chuyên mục, thông tin gồm mã thành viên, tên thành viên, số chuyên mục và sắp xếp giảm dần theo số chuyên mục quản lý. 
Nếu có số chuyên mục bằng nhau thì sắp xếp theo mã thành viên.*/

SELECT tv.MaThanhVien, tv.TenThanhVien, count(cm.MaChuyenMuc) SoChuyenMuc
FROM ThanhVien tv
INNER JOIN ChuyenMuc cm ON tv.MaThanhVien = cm.MaThanhVien
GROUP BY tv.MaThanhVien, tv.TenThanhVien
HAVING count(cm.MaChuyenMuc) > 1
ORDER BY count(cm.MaChuyenMuc) DESC, TenThanhVien;
GO


