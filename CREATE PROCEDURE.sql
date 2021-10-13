/*Kiểm tra email đã tồn tại trong bảng ThanhVien chưa. Hiện thông báo.*/

CREATE PROCEDURE sp_CheckEmail (@Email VARCHAR(30))
AS
BEGIN
    DECLARE @count INT
    SET @count = (SELECT count(*) FROM ThanhVien WHERE Email = @Email)
    IF @count > 0
        PRINT N'Email đã được sử dụng'
    ELSE
        PRINT N'Email chưa được sử dung'
END;
GO

EXEC sp_CheckEmail 'admin@gmail.com';
GO