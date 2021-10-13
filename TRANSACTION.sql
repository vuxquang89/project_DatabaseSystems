/*Khi thêm mới thành viên (bạn đọc) thì sẽ insert vào CSDL ThanhVien. 
Nếu thỏa điều kiện thì thêm vào, ngược lại thì bỏ qua*/

BEGIN TRAN
    INSERT INTO ThanhVien(MaThanhVien, TenThanhVien, Email, MatKhau, GioiHanQuyen, MaQuanLy)
                VALUES('TV0032', 'Quang Vu', 'abc@gmail.com', '12345678', 2, 'TV0001');
    IF @@ERROR != 0 --nếu có lỗi xảy ra
    BEGIN 
        PRINT N'Không thể thêm mới'
        ROLLBACK;
    END 
    ELSE BEGIN
        PRINT N'Thêm mới thành công'
        COMMIT;
    END
GO

