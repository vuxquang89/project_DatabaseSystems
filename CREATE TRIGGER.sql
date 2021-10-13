/*Khi thêm chuyên mục vào bảng ChuyenMuc mà MaThanhVien không phải là các phóng viên(có GioiHanQuyen = 1) 
thì báo lỗi không thể thêm*/

CREATE TRIGGER tri_insert_chuyenmuc ON ChuyenMuc AFTER INSERT 
AS
DECLARE @MaTV VARCHAR(10)
--đọc dữ liệu trong bảng tạm inserted
SELECT @MaTV = MaThanhVien FROM inserted 
--kiểm tra MaThanhVien
IF NOT EXISTS (SELECT 1 FROM ThanhVien WHERE MaThanhVien = @MaTV AND GioiHanQuyen = 1)
BEGIN
    ROLLBACK 
    PRINT N'Không thể thêm chuyên mục'
END
;
GO

INSERT INTO ChuyenMuc
VALUES('VANHOA', N'Văn hóa', 'THOISU', 'TV0022');
GO