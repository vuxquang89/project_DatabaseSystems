/*Kiểm tra email có hợp lệ. Nếu hợp lệ trả về 1, ngược lại trả về 0.*/

CREATE FUNCTION dbo.fCheckEmail(@Email VARCHAR(30))
RETURNS BIT AS
BEGIN
    DECLARE @result AS BIT 
    --kiểm tra chuỗi Email. Nếu chuỗi không phải là dạng email
    IF (@Email <> '' AND @Email NOT LIKE '_%@__%.__%')
        SET @result = 0 --trả về 0
    ELSE
        SET @result = 1 --trả về 1
    RETURN @result
END;
GO

SELECT dbo.fCheckEmail('a@gmail.com') result;
GO
