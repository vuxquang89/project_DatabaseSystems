/*Thực hiện đánh chỉ mục cho trường TieuDe của bảng TinTuc. 
Vì trường này thường xuyên được tìm kiếm*/
CREATE NONCLUSTERED INDEX nonclus_tintuc ON TinTuc(TieuDe);
GO