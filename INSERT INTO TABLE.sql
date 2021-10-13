/*chen dữ liệu vào bảng DanhMuc*/

INSERT INTO DanhMuc
VALUES('THOISU', N'Thời sự'),
('GOCNHIN', N'Góc nhìn'),
('THEGIOI', N'Thế giới'),
('KDOANH', N'Kinh doanh'),
('THETHAO', N'Thể Thao');
GO

/*Chèn dữ liệu vào bảng ThanhVien*/

INSERT INTO ThanhVien(MaThanhVien, TenThanhVien, Email, MatKhau, DiaChi, SDT, GioiHanQuyen, MaQuanLy)
VALUES
('TV0001', 'admin', 'admin@gmail.com', '12345678',NULL,NULL,0,NULL),
('TV0002',N'Viết Tuân','viettuan@gmail.com','viettuan123',N'Cầu Giấy','0901234567',1,'TV0001'),
('TV0003',N'Trung Sơn','trungson@gmail.com','trungson123',N'Tân Phú','0768332456',1,'TV0001'),
('TV0004',N'Tú Anh','tuanh@gmail.com','tuanh123',N'Tân Phú','0905321443',1,'TV0001'),
('TV0005',N'Anh Minh','anhminh@gmail.com','anhminh123',N'Bình Thạnh','0902342553',1,'TV0001'),
('TV0006',N'Đình Văn','dinhfvan@gmail.com','dinhvan123',N'Bình Chánh','0769332443',1,'TV0001'),
('TV0007',N'Đức Hùng','dunhung@gmail.com','duchung123',N'Thái Bình','0983575843',1,'TV0001'),
('TV0008',N'Hồng Duy','hongduy@gmail.com','hongduy123',N'Hồng Bàng','0904223343',1,'TV0001'),
('TV0009','vuminhvuong2020','vuminhvuong2020@gmail.com','vuminhvuong',NULL,NULL,2,'TV0001'),
('TV0010','duongdaichi9792','duongdaichi9792@gmail.com','duong969792',NULL,NULL,2,'TV0001'),
('TV0011','Quang','quangtran@gmail.com','quang1234',NULL,NULL,2,'TV0001'),
('TV0012','nuocmuathu282008','nuocmuathu282008@gmail.com','abcdse123',NULL,NULL,2,'TV0001'),
('TV0013',N'Bách Hóa Môi Trường','bachhoa@gmail.com','123qweasd',NULL,NULL,2,'TV0001'),
('TV0014','Ronaldinho','ronaldinho@gmail.com','abcwqw12',NULL,NULL,2,'TV0001'),
('TV0015','tu pham','tupham@gmail.com','qwertyui',NULL,NULL,2,'TV0001'),
('TV0016',N'Huỳnh Công Dung','huynhcongdung@gmail.com','dung3456',NULL,NULL,2,'TV0001'),
('TV0017',N'Phạm Trung','trungpham@gmail.com','trungpham678',NULL,null,2,'TV0001'),
('TV0018',N'Mai Tiến','tien@gmail.com','maitien1256',null,null,2,'TV0001'),
('TV0019','phan minh','phanminh@gmail.com','phanminh123',null,null,2,'TV0001'),
('TV0020','Minh Hi-Tech','minhminh@gmail.com','minhminh2345',null,null,2,'TV0001'),
('TV0021',N'Lê Ngọc Minh Cường','minhcuong@gmail.com','cuongcuong345',null,null,2,'TV0001'),
('TV0022',N'Tú Đan','tudandan@gmail.com','tu123abc',null,null,2,'TV0001');
Go


/*Chèn dữ liệu vào bảng ChuyenMuc*/

INSERT INTO ChuyenMuc
VALUES('CHINHTRI',N'Chính trị','THOISU','TV0002'),
('GIAOTHONG',N'Giao thông','THOISU','TV0002'),
('DANSINH',N'Dân sinh','THOISU','TV0006'),
('TULIEU',N'Tư liệu','THEGIOI','TV0003'),
('QUANSU',N'Quân sự','THEGIOI','TV0007'),
('QUOCTE',N'Quốc tế','KDOANH','TV0004'),
('BONGDA',N'Bóng đá','THETHAO','TV0008'),
('TENNIS',N'Tennis','THETHAO','TV0008'),
('HANGHOA',N'Hàng hóa','KDOANH','TV0005');
GO


/*Chèn dữ liệu vào bảng TinTuc*/

INSERT INTO TinTuc(MaTinTuc,TieuDe,TomTat,NoiDung, SoLuocXem,NoiBat,NgayDang,NgayGo,MaChuyenMuc)
VALUES
(1,N'Bộ Công Thương có thứ trưởng mới',
N'Ông Nguyễn Sinh Nhật Tân, Cục trưởng Cạnh tranh và Bảo vệ người tiêu dùng, được bổ nhiệm làm Thứ trưởng Công Thương, ngày 10/9.',
N'Ông Nguyễn Sinh Nhật Tân, Cục trưởng Cạnh tranh và Bảo vệ người tiêu dùng, được bổ nhiệm làm Thứ trưởng Công Thương, ngày 10/9.
Trước khi được Thủ tướng bổ nhiệm làm Thứ trưởng Công Thương, ông Tân từng đảm nhiệm nhiều chức vụ trong Bộ như: Vụ trưởng Pháp chế; Cục trưởng Cạnh tranh và Bảo vệ người tiêu dùng.
Bộ Công Thương hiện có bốn thứ trưởng là các ông: Trần Quốc Khánh, Đỗ Thắng Hải, Đặng Hoàng An, Nguyễn Sinh Nhật Tân. Bộ trưởng là ông Nguyễn Hồng Diên.
Cùng ngày, Thủ tướng bổ nhiệm bà Vũ Việt Trang, Phó tổng giám đốc Thông tấn xã Việt Nam, làm Tổng giám đốc.
Bà Trang 52 tuổi, quê Hà Nội, tốt nghiệp Đại học Tổng hợp Hà Nội, chuyên ngành Anh văn. Bà được bổ nhiệm làm Phó tổng giám đốc Thông tấn xã Việt Nam từ cuối năm 2017.',
80,0,'2021-09-10 19:06:00',NULL,'CHINHTRI'),
(2,N'Thủ tướng: Đại dịch còn kéo dài',
N'Lãnh đạo Chính phủ Việt Nam kêu gọi quốc tế "tiếp tục hợp tác chặt chẽ hơn nữa" trong bối cảnh đại dịch sẽ còn kéo dài, diễn biến phức tạp và khó lường.',
N'Lãnh đạo Chính phủ Việt Nam kêu gọi quốc tế "tiếp tục hợp tác chặt chẽ hơn nữa" trong bối cảnh đại dịch sẽ còn kéo dài, diễn biến phức tạp và khó lường.
Sáng 1/9, Thủ tướng Phạm Minh Chính chủ trì lễ kỷ niệm 76 năm ngày Quốc khánh; tham dự có ông Võ Văn Thưởng, Thường trực Ban Bí thư; ông Trần Thanh Mẫn, Phó chủ tịch Thường trực Quốc hội...
Cùng dự buổi lễ có các vị Đại sứ, Đại biện, Trưởng đại diện tổ chức quốc tế tại Việt Nam... Lễ kỷ niệm được tổ chức trực tuyến tới các cơ quan đại diện nước ngoài tại Việt Nam, các cơ quan đại diện Việt Nam tại các nước và tổ chức quốc tế.
Các lãnh đạo, nguyên lãnh đạo Đảng, Nhà nước vào Lăng viếng Chủ tịch Hồ Chí Minh. Ảnh: TTXVN
Các lãnh đạo, nguyên lãnh đạo Đảng, Nhà nước vào Lăng viếng Chủ tịch Hồ Chí Minh, sáng 1/9. Ảnh: TTXVN
Phát biểu của Thủ tướng Phạm Minh Chính nhắc lại, cách đây 76 năm, ngày 2/9 năm 1945, tại cuộc mít tinh trên quảng trường Ba Đình lịch sử, Chủ tịch Hồ Chí Minh đã đọc bản Tuyên ngôn Độc lập, tuyên bố trước quốc dân đồng bào và toàn thế giới sự ra đời của nước Việt Nam dân chủ Cộng hòa, nay là nước Cộng hòa xã hội chủ nghĩa Việt Nam.
Sau hơn 35 năm Đổi mới, Việt Nam đã đạt được những thành tựu to lớn, có ý nghĩa lịch sử trên tất cả các lĩnh vực; trở thành quốc gia có quy mô dân số gần 100 triệu người với GDP bình quân đầu người hơn 3.500 USD….',
150,1,'2021-09-01 15:03:00',null,'CHINHTRI'),
(3,N'TP HCM sẽ thí điểm "thẻ xanh, thẻ vàng Covid"',
N'TP HCM dự kiến áp dụng "thẻ xanh, thẻ vàng Covid" kiểm soát mức độ tham gia xã hội của người dân, doanh nghiệp trong mở cửa, phục hồi kinh tế ở 3 giai đoạn.',
N'TP HCM dự kiến áp dụng "thẻ xanh, thẻ vàng Covid" kiểm soát mức độ tham gia xã hội của người dân, doanh nghiệp trong mở cửa, phục hồi kinh tế ở 3 giai đoạn.
Đây là một trong những nội dung nêu trong dự thảo Kế hoạch phòng chống Covid-19 và phục hồi kinh tế của TP HCM sau ngày 15/9 được thành phố tổ chức lấy ý kiến đóng góp từ cộng đồng doanh nghiệp chiều 10/9.
Từ quan điểm mở cửa kinh tế phải bảo vệ sức khoẻ người dân, "an toàn tới đâu mở tới đó", TP HCM sẽ từng bước nới lỏng giãn cách xã hội, triển khai thí điểm thẻ Covid, ưu tiên mở một số lĩnh vực tại quận 7, Củ Chi, Cần Giờ. Trong đó, thẻ Covid là công cụ kiểm soát người dân trong quá trình phục hồi. Thẻ này được cấp cho những người đủ các yêu cầu về y tế, dịch tễ, gồm 2 loại: thẻ xanh Covid và thẻ vàng Covid. Thẻ có mã QR cấp từ hệ thống cơ sở dữ liệu của Sở Y tế.
….',230,1,'2021-09-10 21:22:00',null,'DANSINH'),
(4,N'Toshiba đóng cửa nhà máy 30 năm tuổi ở Trung Quốc',
N'Tập đoàn công nghệ Nhật Bản sẽ đóng cửa nhà máy ở phía bắc thành phố Đại Liên và chuyển toàn bộ hoạt động sản',
N'Tập đoàn công nghệ Nhật Bản sẽ đóng cửa nhà máy ở phía bắc thành phố Đại Liên và chuyển toàn bộ hoạt động sản xuất sang Nhật Bản và Việt Nam.
Đây như một phần trong quá trình tái cấu trúc kinh doanh đang diễn ra của tập đoàn này. Nhà máy Đại Liên có khoảng 650 lao động sản xuất động cơ công nghiệp và máy phát sóng. Tuy nhiên, nó đã rơi vào tình trạng sa sút do giảm sản lượng nghiêm trọng. Trước đó, nhà máy này cũng từng sản xuất nhiều sản phẩm như tivi, thiết bị y tế. Theo Toshiba, vào thời kỳ hoàng kim năm 2010, nhà máy sử dụng khoảng 2.400 lao động.
Nhà máy Đại Liên mở cửa vào năm 1991 với vai trò là trung tâm sản xuất đầu tiên của Toshiba tại Trung Quốc, khi Bạc Hy Lai - người đang phải thụ án tù chung thân vì tham nhũng là phó thị trưởng. Ông lên làm thị trưởng năm 1993 và xây dựng Đại Liên thành một trung tâm của các nhà sản xuất Nhật Bản.
Toshiba là tên tuổi hàng đầu trong số các công ty có trụ sở tại Đại Liên. Nhà máy Toshiba ở Đại Liên sẽ bắt đầu quá trình thanh lý sớm nhất vào tháng 10. Hoạt động sản xuất ở đây sẽ được chuyển sang Việt Nam và Nhật Bản. Các nhà máy còn lại của Toshiba ở Đại Liên và những thành phố khác sản xuất linh kiện đường sắt, thang máy vẫn hoạt động bình thường.
Toshiba cũng sẽ đóng cửa một nhà máy ở tỉnh Saitama của Nhật Bản. Địa điểm này bắt đầu hoạt động năm 1965 với tư cách là nhà máy sản xuất tivi màu đầu tiên của Toshiba. Tuy nhiên, công ty đã chấm dứt hoạt động sản xuất tivi trong nước vào năm 2012.',
100,1,'2021-09-11 01:20:00',null,'QUOCTE'),
(5,N'Giá xăng, dầu đồng loạt tăng',
N'Từ 15h hôm nay, mỗi lít xăng tăng 250-260 đồng còn mỗi lít dầu đắt thêm 320-900 đồng.',
N'Từ 15h hôm nay, mỗi lít xăng tăng 250-260 đồng còn mỗi lít dầu đắt thêm 320-900 đồng.
Liên Bộ Công Thương - Tài chính cho biết, giá xăng E5 RON 92 từ 15h ngày 10/9 cao nhất là 20.140 đồng một lít (tăng 250 đồng); RON 95 là 21.390 đồng một lít (tăng 260 đồng).
Giá các mặt hàng dầu đều tăng. Dầu hoả là 15.080 đồng một lít, tăng 320 đồng. Dầu diesel là 16.020 đồng một lít, tăng 360 đồng. Dầu madut là 15.950 đồng một kg, tăng 900 đồng.
Cơ quan điều hành cũng chi 900 đồng từ quỹ để bù cho mỗi lít xăng E5 RON 92; các mặt hàng khác không chi quỹ.
Cùng đó, nhà điều hành trích quỹ 150 đồng một lít với ROn 95; trích 200 đồng mỗi lít dầu diesel và dầu hoả; dầu madut là 100 đồng mỗi kg. Riêng xăng E5 RON 92 không trích quỹ.
Như vậy, giá xăng đã có đợt tăng trở lại sau một kỳ giảm giá và một kỳ giữ nguyên giá bán từ giữa tháng 8 đến nay.',
500,1,'2021-09-10 14:54:00',null,'HANGHOA'),
(6,N'Nga điều thêm hàng chục xe tăng đến gần Afghanistan',
N'Nga sẽ triển khai 30 xe tăng đời mới đến căn cứ đồn trú ở Tajikistan, trong bối cảnh Taliban kiểm soát quốc gia láng giềng Afghanistan.',
N'Nga sẽ triển khai 30 xe tăng đời mới đến căn cứ đồn trú ở Tajikistan, trong bối cảnh Taliban kiểm soát quốc gia láng giềng Afghanistan.
"30 xe tăng hiện đại sẽ được triển khai nhằm thay thế những dòng xe cũ hơn trong biên chế tiểu đoàn thiết giáp thuộc căn cứ đồn trú số 201 của Nga ở Tajikistan từ nay đến cuối năm", Khanif Beglov, chỉ huy lực lượng thiết giáp thuộc Quân khu miền Trung của Nga, cho biết hôm nay.
Quan chức Nga không cho biết mẫu xe tăng sẽ được đưa đến Tajikistan, nhưng lực lượng đồn trú của nước này tại Tajikistan đang biên chế xe tăng chiến đấu chủ lực T-72B và xe chiến đấu bộ binh BMP-2. Quân khu miền Trung đã nhận khoản 100 xe thiết giáp các loại từ đầu năm nay, trong đó có 30 xe tăng chủ lực T-72B3M được nâng cấp toàn diện.
Căn cứ đồn trú số 201 là một trong những cơ sở quân sự lớn nhất của Moskva ở Tajikistan. Quân đội Nga cuối tháng 7 thông báo điều động thêm 17 xe chiến đấu bộ binh BMP-2 đến đây, trong khi Quân khu miền Trung hồi tháng 8 tuyên bố tăng cường sức mạnh cho lực lượng đồn trú với hàng loạt vũ khí mới như tên lửa phòng không vac vai Verba, súng trường AK-12, súng tỉa và súng máy hiện đại, tên lửa nhiệt áp và tên lửa diệt tăng Kornet.
Moskva từng nhiều lần lo ngại tình hình tại Afghanistan có thể đẩy người tị nạn và các phần tử Hồi giáo cực đoan về khu vực Trung Á, làm mất ổn định khu vực sườn phía nam nước Nga. Biên giới giữa Tajikistan và Afghanistan dài 1.344 km, chủ yếu là địa hình đồi núi và rất khó kiểm soát.',
270,0,'2021-09-10 16:52:00',null,'QUANSU'),
(7,N'Solskjaer: "Ronaldo chắc chắn đá trận Man Utd - Newcastle"',
N'ANH - HLV Ole Gunnar Solskjaer xác nhận tân binh Cristiano Ronaldo sẽ ra mắt Man Utd ở trận gặp Newcastle United ở vòng 4 Ngoại hạng Anh hôm nay 11/9.',
N'"Ronaldo chuẩn bị tốt cho mùa giải mới cùng Juventus. Cậu ấy thi đấu ấn tượng ở tuyển Bồ Đào Nha, và vừa có gần một tuần tập luyện vui vẻ cùng đồng đội mới. Ronaldo chắc chắn sẽ ra sân ở trận gặp Newcastle, trong một thời điểm thích hợp", Solskjaer nói hôm 10/9 trong buổi họp báo trước trận.
Man Utd vừa có phiên chợ hè rầm rộ , khi tuyển mộ Jadon Sancho với 100 triệu USD, Raphael Varane với 58 triệu USD, và Cristiano Ronaldo với 27 triệu USD. Người hâm mộ Man Utd, vì thế, rất kỳ vọng vào việc đội bóng con cưng sẽ đoạt danh hiệu Ngoại hạng Anh đầu tiên từ mùa 2012-2013, mùa giải cuối cùng của Sir Alex Ferguson trước khi giải nghệ.
"Tất cả đều biết Ronaldo đã làm được gì trong sự nghiệp. Cậu ấy tới đây để tiếp tục gặt hái thành công, và cậu ấy cũng đòi hỏi nhiều hơn từ các đồng đội. Man Utd đã tiến bộ nhiều trong những năm qua. Tham vọng, quyết tâm và sự tập trung được cải thiện từng mùa. Việc chiêu mộ Varane cũng mang lại tâm lý chiến thắng cho Man Utd. Và giờ là sự góp mặt của Ronaldo nữa. Chúng tôi sẽ không trốn tránh khi sở hữu những nhà vô địch như họ", Solskjaer nhấn mạnh.
Khi Ronaldo trở lại Old Trafford hè này, Edinson Cavani đang đeo áo số 7 và được cho là không có ý định nhường số. Tình thế khó xử được tháo gỡ khi Man Utd bán Daniel James - người đeo áo số 21 của Man Utd hai mùa gần nhất - sang Leeds vào ngày cuối kỳ chuyển nhượng. Số 21, nhờ đó, được chuyển cho Cavani - người cũng đeo số áo tương tự trong màu áo tuyển Uruguay, và số 7 của Man Utd một lần nữa thuộc về Ronaldo.',
600,0,'2021-09-11 00:00:00',null,'BONGDA'),
(8,N'Hai tay vợt gốc Á đổi đời nhờ Mỹ Mở rộng',
N'MỸ - Ngay cả khi thua trận chung kết, Leylah Fernandez và Emma Raducanu cũng sẽ trở thành triệu phú USD trước tuổi 20.',
N'MỸ - Ngay cả khi thua trận chung kết, Leylah Fernandez và Emma Raducanu cũng sẽ trở thành triệu phú USD trước tuổi 20.
Trước khi tới Mỹ Mở rộng năm nay, Emma Raducanu chưa vào chung kết sự kiện WTA Tour nào. Cô đoạt ba chức vô địch ITF, vào vòng bốn Wimbledon với tổng tiền thưởng 303.376 USD. Trong khi đó, Leylah Fernandez có một chức vô địch WTA và một danh hiệu ITF với tổng tiền thưởng 786.772 USD.
Việc vượt qua bán kết Mỹ Mở rộng giúp đôi vợt tuổi teen chắc chắn bỏ túi 1,25 triệu USD – nhiều hơn tổng tiền thưởng của Rafael Nadal năm nay. Nếu vô địch, họ kiếm được 2,5 triệu USD – chỉ kém tổng tiền thưởng của tay vợt nữ số một thế giới Ashleigh Barty, người đã vô địch năm giải từ đầu năm. Ngoài Barty, chưa tay vợt nữ nào kiếm hơn 2,5 triệu USD ở các sự kiện đơn từ đầu năm.
Với 2,5 triệu USD thưởng vô địch, Mỹ Mở rộng là Grand Slam hào phóng nhất mùa này. Trước đó, Wimbledon chi 2,3 triệu USD, Roland Garros chi 1,6 triệu, còn Australia Mở rộng thưởng 1,99 triệu cho các nhà vô địch đơn nam và đơn nữ….',
447,1,'2021-09-10 18:37:00',null,'TENNIS'),
(9,N'Cứu 5 người trong nhà trọ bị cháy',
N'TP HCM - Khói lửa bao trùm nhà trọ bốn tầng có gần 20 phòng tại phường 11, quận 10, khiến nhiều người mắc kẹt, được cảnh sát giải cứu, sáng 11/9.',
N'10h, lửa bùng lên từ lầu một ngôi nhà rộng gần 240 m2, ngăn phòng cho lao động và sinh viên thuê, nằm trong hẻm dân cư đông đúc, cách đường Điện Biên Phủ khoảng 30 m. Khi đó, hơn 40 người sống trong các phòng đã hô hoán nhau dập lửa nhưng không thành.
Khói lửa bao trùm toàn khu nhà khiến họ hoảng loạn kêu cứu, trong đó có 5 người gồm 3 nữ và 2 nam (23-34 tuổi) mắc kẹt ở lầu một. 10 xe chữa cháy cùng 70 chiến sĩ được điều xuống hiện trường ứng cứu. Lính cứu hoả hướng dẫn hơn 30 người thoát ra ngoài bằng cầu thang bộ và kéo vòi rồng dập lửa, chống cháy lan. Tốp khác mang mặt nạ chống độc bắc thang cứu 5 người ở lầu 2.
Đám cháy được khống chế sau gần 30 phút, song nhiều tài sản bị thiêu rụi. Theo cảnh sát, nguyên nhân có thể do bất cẩn khi nấu ăn.',
800,1,'2021-09-11 01:13:00',null,'DANSINH'),
(10,N'Gặt lúa chạy bão',
N'HÀ TĨNHBộ đội, công an, thanh niên ở huyện Lộc Hà, Hương Sơn… xuống đồng giúp dân thu hoạch lúa hè thu chạy bão Côn Sơn.',
N'HÀ TĨNHBộ đội, công an, thanh niên ở huyện Lộc Hà, Hương Sơn… xuống đồng giúp dân thu hoạch lúa hè thu chạy bão Côn Sơn.
Nằm ở rìa cơn bão, Hà Tĩnh được dự báo có mưa 100-250 mm trong các ngày 12-14/9. Trong khi đó tỉnh còn 7.500 hecta lúa hè thu 2021 chưa gặt xong do thời tiết bất lợi và lúa chưa đạt tỷ lệ chín tối thiểu. Để tránh bão, chính quyền phối hợp với bộ đội, công an và các đoàn thể khẩn trương thu hoạch cho dân.
Ngày 10/9, tại cánh đồng rộng hàng chục hecta ở thôn Yến Giang, xã Hồng Lộc, huyện Lộc Hà, nhiều diện tích lúa hè thu bị đổ rạp, nước ngập 30-40 cm do ảnh hưởng bởi trận mưa lớn kèm gió mạnh trước đó. Nước dâng, máy gặt không thể tiếp cận, 30 cán bộ, chiến sĩ thuộc Ban Chỉ huy quân sự huyện Lộc Hà xuống đồng hỗ trợ người dân thu hoạch để tránh bão đổ bộ gây hư hỏng.
Chiến sĩ đi ủng, dùng liềm gặt lúa thủ công. Những gia đình chính sách, neo đơn, hoàn cảnh khó khăn được ưu tiên hỗ trợ trước. Bó lúa được đặt lên thuyền, đẩy vào bờ để máy tuốt, sau đó đóng vào bao tải chở về nhà cho người dân.
Bà Hồ Thị Điền, 60 tuổi, trú thôn Yến Giang, xã Hồng Lộc, cho biết gia đình trồng 6 sào lúa, hiện ngập 3 sào. "Nhà neo người, con cái làm ăn xa, chồng bị bệnh nằm một chỗ 20 năm nay. Thu nhập thấp không có tiền thuê người, tôi đang lo không thể gặt kịp, rất may mắn được bộ đội giúp", bà Điền nói.
Trực tiếp đẩy thuyền xuống đồng, trung tá Nguyễn Thành Nam, Chính trị viên phó, Ban chỉ huy quân sự huyện Lộc Hà, động viên người dân thu hoạch nhanh nhất có thể, phương châm "xanh nhà hơn già đồng". "Lúa là tài sản lớn của nông dân, đơn vị cố gắng trước khi bão Côn Sơn đổ bộ sẽ giúp bà con gặt cơ bản, giảm tối thiểu thiệt hại", trung tá Nam cho hay.',
967,1,'2021-09-11 00:03:00',null,'DANSINH');
go

/*Chèn dữ liệu vào bảng BinhLuan*/

INSERT INTO BinhLuan
VALUES('TV0011',2,N'Tôi muốn được tiêm và đi làm','2021-09-01 18:43:00',0),
('TV0012',2,N'Cầu mong cho mọi nguời bình an! Việt Nam cố lên','2021-09-01 18:58:00',0),
('TV0013',2,N'Hi vọng sớm khống chế dịch bệnh','2021-09-01 19:01:00',0),
('TV0014',5,N'Lúc không ai đi thì giảm, lúc bắt đầu có người đi thì tăng, xăng sản xuất trong nước thì tồn ế.','2021-09-11 09:10:00',0),
('TV0016',5,N'Mặt hàng xăng dầu thật thông minh, thời gian cung - cầu điều chỉnh cực kỳ chính xác và hợp lý.','2021-09-11 09:40:00',0),
('TV0017',5,N'Đang giản cách thì giảm. Hết giản cách lại tăng','2021-09-11 10:05:00',0),
('TV0019',5,N'Năm trước vào tháng 4 khi cách ly xã hội, giá xăng dầu giảm chỉ còn 14.000 đến 15.000. Trong khi năm này không thấy giảm, chỉ thấy tăng.','2021-09-11 13:20:00',0),
('TV0018',3,N'Làm thế mới đúng.có 2 mủi rồi mà ở nhà gây lãng phí vacxin,lãng nhân lực,lãng phí kinh tế và còn gây ra lãng phí hậu cần khâu lương thực,thực phẩm.','2021-09-11 07:13:00',0),
('TV0020',8,N'Tố chất của người Vietnam có phù hợp với môn tennis không nhỉ, tôi cũng muốn cho con theo học môn này. Hai tay vợt nữ vào chung kết US cũng đều là người gốc Á, ngoài ra còn có Osaka, trước đây Lina cũng rất hay. Có vẽ phụ nữ Á chơi tennis thành công hơn nam.','2021-09-11 08:32:00',0),
('TV0021',8,N'Bố vợ Murray đặt vé cho Murray thôi chứ không phải cho Raducanu vì biết chắc ông con rể khó qua nổi vòng 1.','2021-09-11 09:30:00',0),
('TV0022',8,N'Anh chưa có vợ. Em sẽ thêm một cơ hội nữa.','2021-09-11 09:28:00',0),
('TV0015',10,N'Xin gửi lời cám ơn chân thành nhất và lời chúc thật nhiều sức khoẻ đến những chiến sĩ','2021-09-11 07:20:00',0),
('TV0009',10,N'Cám ơn các chiến sỹ tuyến đầu','2021-09-11 08:12:00',0),
('TV0010',10,N'Hình ảnh thật đẹp, nhớ quê quá. Hà Tĩnh mình thương !','2021-09-11 08:17:00',0);
GO



