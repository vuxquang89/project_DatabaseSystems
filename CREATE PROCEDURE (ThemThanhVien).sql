/*Thực hiện thêm thành viên mới sử dụng function kiểm tra email đã tạo*/

CREATE PROCEDURE sp_ThemThanhVien(@MaTV VARCHAR(15), 
                                @TenTV NVARCHAR(50),
                                @MK VARCHAR(30), 
                                @Email VARCHAR(30), 
                                @GioiHanQuyen INT, 
                                @MaQL VARCHAR(10))
AS
BEGIN
    DECLARE @checkemail AS BIT,
            @checkmatv INT
    SET @checkmatv = (SELECT count(*) FROM ThanhVien WHERE MaThanhVien = @MaTV)
    SET @checkemail = (SELECT dbo.fCheckEmail(@Email))

    IF @checkmatv > 0
        BEGIN
            PRINT N'Mã thành viên đã tồn tại'
            --ROLLBACK
        END
    ELSE IF @checkemail = 0
        BEGIN
            PRINT N'Email không hợp lệ'
            --ROLLBACK 
        END 
    ELSE 
        BEGIN 
            INSERT INTO ThanhVien(MaThanhVien, TenThanhVien, Email, MatKhau, GioiHanQuyen, MaQuanLy)
            VALUES(@MaTV, @TenTV, @Email, @MK, @GioiHanQuyen, @MaQL)
            PRINT N'Thêm thành công'
        END
END;
GO


EXEC sp_ThemThanhVien 'TV0030', 'Quang vu', '123456789','admin@gmail.com', 2, 'TV0001';
GO
