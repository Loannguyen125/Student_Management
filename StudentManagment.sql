USE StudentDB;
CREATE DATABASE StudentDB;
-- Bảng 1: Student
CREATE TABLE Student (
    student_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    class_id VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);
-- Bảng 2: Subject
CREATE TABLE Subject (
    subject_id VARCHAR(50) PRIMARY KEY,
    student_id VARCHAR(50) NOT NULL,
    name VARCHAR(255) NOT NULL,
    instructor VARCHAR(255) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);
-- Bảng 3: Assignment
CREATE TABLE Assignment (
    assignment_id VARCHAR(50) PRIMARY KEY,
    subject_id VARCHAR(50) NOT NULL,
    name VARCHAR(255) NOT NULL,
    deadline DATETIME,
    status ENUM ('Pending', 'Complete') NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);
-- Bảng 4: Note
CREATE TABLE Note (
	note_id VARCHAR(50) PRIMARY KEY,
    subject_id VARCHAR(50) NOT NULL,
    title VARCHAR(255),
    content TEXT,
    creation_date DATETIME,
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);
-- Bảng 5: Schedule
CREATE TABLE Schedule (
    schedule_id VARCHAR(50) PRIMARY KEY,
    student_id VARCHAR(50) NOT NULL,
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);
-- Bảng 6: Event
CREATE TABLE Event (
    event_id VARCHAR(50) PRIMARY KEY,
    schedule_id VARCHAR(50) NOT NULL,
    name VARCHAR(255) NOT NULL,
    time DATETIME,
    FOREIGN KEY (schedule_id) REFERENCES Schedule(schedule_id)
);

-- Chèn dữ liệu 
-- Bảng 1: Student
INSERT INTO Student (student_id, name, class_id, email, password) 
VALUES
('ST001', 'Hồ Hải Dũng', 'B23CQCE04', 'dunghn@stu.edu.vn', 'gO8Ht42t'),
('ST002', 'Ngô Hoàng Thảo', 'B23CQCE04', 'thaonh@stu.edu.vn', 'IOSQVpnn'),
('ST003', 'Mai Anh Thảo', 'B23CQCE04', 'thaoma@stu.edu.vn', 'JqqSPBHi'),
('ST004', 'Hồ Bảo Thảo', 'B23CQCE04', 'thaohb@stu.edu.vn', 'UNAZMzkx'),
('ST005', 'Tô Văn Nam', 'B23CQCE04', 'namtv@stu.edu.vn', 'UuxGNfv0'),
('ST006', 'Trần Thanh Tùng', 'B23CQCE04', 'tungtt@stu.edu.vn', 'Fkl8qN7m'),
('ST007', 'Nguyễn Thị Mai', 'B23CQCE04', 'maintt@stu.edu.vn', 'ZtY2xV1b'),
('ST008', 'Lê Văn An', 'B23CQCE04', 'anlv@stu.edu.vn', 'CWx9yDOa'),
('ST009', 'Phạm Minh Quân', 'B23CQCE04', 'quanpm@stu.edu.vn', 'ESr3zQ5c'),
('ST010', 'Vũ Hoàng Yến', 'B23CQCE04', 'yenhv@stu.edu.vn', 'GPu7TH8d'),
('ST011', 'Đinh Công Sơn', 'B23CQCE04', 'sondc@stu.edu.vn', 'AJi4kL2e'),
('ST012', 'Bùi Thị Lan', 'B23CQCE04', 'lanbt@stu.edu.vn', 'NMm1nO6f'),
('ST013', 'Hoàng Anh Thư', 'B23CQCE04', 'thuanh@stu.edu.vn', 'PQr7rS9g'),
('ST014', 'Huỳnh Gia Bảo', 'B23CQCE04', 'baohg@stu.edu.vn', 'TvW0uX3h'),
('ST015', 'Dương Mỹ Linh', 'B23CQCE04', 'linhdm@stu.edu.vn', 'YZx3VB5i'),
('ST016', 'Ngô Đức Huy', 'B23CQCE04', 'huynd@stu.edu.vn', 'CDd6eWf8j'),
('ST017', 'Phan Kim Ngân', 'B23CQCE04', 'nganpk@stu.edu.vn', 'Ghi9jX2k'),
('ST018', 'Tạ Quang Vinh', 'B23CQCE04', 'vinhtq@stu.edu.vn', 'KlM1yN4l'),
('ST019', 'Trịnh Cẩm Tú', 'B23CQCE04', 'tutrinh@stu.edu.vn', 'OpQ5zR7m'),
('ST020', 'Đồng Trọng Hiếu', 'B23CQCE04', 'hieudt@stu.edu.vn', 'Stu8aVOn'),
('ST021', 'Cao Thanh Hương', 'B23CQCE04', 'huongct@stu.edu.vn', 'WxY1bZ3o'),
('ST022', 'Lý Minh Trí', 'B23CQCE04', 'triml@stu.edu.vn', 'AbC4cD6p'),
('ST023', 'Mai Phương Thảo', 'B23CQCE04', 'thaomp@stu.edu.vn', 'DeF7dG9q'),
('ST024', 'Hồ Xuân Phúc', 'B23CQCE04', 'phuchx@stu.edu.vn', 'HIjOek2r'),
('ST025', 'Võ Thị Diễm', 'B23CQCE04', 'diemvt@stu.edu.vn', 'LmN3fO5s'),
('ST026', 'Nguyễn Văn Hùng', 'B23CQCE04', 'hungnv@stu.edu.vn', 'PQr6gS8t'),
('ST027', 'Lê Ngọc Anh', 'B23CQCE04', 'anhln@stu.edu.vn', 'TuV9hW1u'),
('ST028', 'Phạm Gia Hưng', 'B23CQCE04', 'hungpg@stu.edu.vn', 'XyZ2iA4v'),
('ST029', 'Trần Thị Hà', 'B23CQCE04', 'hatr@stu.edu.vn', 'Bcd5jE7w'),
('ST030', 'Hoàng Long Vũ', 'B23CQCE04', 'vulh@stu.edu.vn', 'Fgh8kI0x'),
('ST031', 'Đào Hải Yến', 'B23CQCE04', 'yendh@stu.edu.vn', 'JKl1IM3y'),
('ST032', 'Phan Văn Kiên', 'B23CQCE04', 'kienpv@stu.edu.vn', 'NoP4mQ6z'),
('ST033', 'Nguyễn Bảo Trâm', 'B23CQCE04', 'tramnb@stu.edu.vn', 'Rst7tN9A'),
('ST034', 'Lê Hoàng Minh', 'B23CQCE04', 'minhlh@stu.edu.vn', 'UvW0oX2b'),
('ST035', 'Trần Xuân Bách', 'B23CQCE04', 'bachtx@stu.edu.vn', 'Yz1pC5c'),
('ST036', 'Phạm Diệu Linh', 'B23CQCE04', 'linhpd@stu.edu.vn', '3dE4qf6e'),
('ST037', 'Vũ Minh Đức', 'B23CQCE04', 'ducvm@stu.edu.vn', '7gH8rl9f'),
('ST038', 'Mai Tuấn Khải', 'B23CQCE04', 'khaimt@stu.edu.vn', '0jK1sL2g'),
('ST039', 'Bùi Thị Thu', 'B23CQCE04', 'thubt@stu.edu.vn', '3mN4tO5h'),
('ST040', 'Tạ Anh Khoa', 'B23CQCE04', 'khoata@stu.edu.vn', '6pQ7uR8i'),
('ST041', 'Cao Xuân Quang', 'B23CQCE04', 'quangcx@stu.edu.vn', '9sT0vU1j'),
('ST042', 'Đinh Thị Mai', 'B23CQCE04', 'maidt@stu.edu.vn', '2wX3yZ4k'),
('ST043', 'Huỳnh Gia Huy', 'B23CQCE04', 'huyhg@stu.edu.vn', '5aB6zC7l'),
('ST044', 'Ngô Trọng Nhân', 'B23CQCE04', 'nhannt@stu.edu.vn', '8dE9wF0m'),
('ST045', 'Phan Văn Lực', 'B23CQCE04', 'lucpv@stu.edu.vn', '1gH2xL3n'),
('ST046', 'Tô Ngọc Châu', 'B23CQCE04', 'chautn@stu.edu.vn', '4jK5yL6o'),
('ST047', 'Trương Thanh Liên', 'B23CQCE04', 'liemtt@stu.edu.vn', '7mN8zO9p'),
('ST048', 'Nguyễn Quang Hà', 'B23CQCE04', 'hanq@stu.edu.vn', '0qR1aS2q'),
('ST049', 'Lê Thị Kiều Oanh', 'B23CQCE04', 'oanhlt@stu.edu.vn', '3tU4bV8r'),
('ST050', 'Phạm Chí Thanh', 'B23CQCE04', 'thanhc@stu.edu.vn', '6wX7cD8s'),
('ST051', 'Võ Minh Quân', 'B23CQCE04', 'quanvm@stu.edu.vn', '9yZ0dE1t'),
('ST052', 'Hồ Anh Việt', 'B23CQCE04', 'vietho@stu.edu.vn', '2fG3hL4u'),
('ST053', 'Mai Lê Na', 'B23CQCE04', 'nallm@stu.edu.vn', '5jK6gL7v'),
('ST054', 'Đào Văn Long', 'B23CQCE04', 'longdv@stu.edu.vn', '8mN9hO0w'),
('ST055', 'Trần Quốc Bảo', 'B23CQCE04', 'baotq@stu.edu.vn', '1pQ2iR3x'),
('ST056', 'Lương Hải Đăng', 'B23CQCE04', 'danglh@stu.edu.vn', '4sT5jU6y'),
('ST057', 'Huỳnh Thị Thu', 'B23CQCE04', 'thuh@stu.edu.vn', '7wX8kY9z'),
('ST058', 'Đinh Anh Tú', 'B23CQCE04', 'tudt@stu.edu.vn', 'OaB1tC2a'),
('ST059', 'Cao Văn Lợi', 'B23CQCE04', 'loicv@stu.edu.vn', '3dE4mF5b'),
('ST060', 'Lý Thị Hồng', 'B23CQCE04', 'honglt@stu.edu.vn', '6gH7nI8c'),
('ST061', 'Nguyễn Văn Thành', 'B23CQCE04', 'thanhng@stu.edu.vn', '9jKOoP1d'),
('ST062', 'Lê Ngọc Duy', 'B23CQCE04', 'duyln@stu.edu.vn', '2mN3pQ4e'),
('ST063', 'Phạm Thị Kim', 'B23CQCE04', 'kimpt@stu.edu.vn', '5rS6qT7f'),
('ST064', 'Trần Anh Tuấn', 'B23CQCE04', 'tuanta@stu.edu.vn', '8uV9rW0g'),
('ST065', 'Hoàng Minh Thắng', 'B23CQCE04', 'thanghm@stu.edu.vn', '1xY2sZ3h'),
('ST066', 'Đào Duy Hùng', 'B23CQCE04', 'hungdd@stu.edu.vn', '4aB5tC6i'),
('ST067', 'Phan Trọng Nghĩa', 'B23CQCE04', 'nghiapt@stu.edu.vn', '7dE8uF9j'),
('ST068', 'Bùi Thị Thanh', 'B23CQCE04', 'thanhb@stu.edu.vn', 'OgH1vL2k'),
('ST069', 'Tạ Minh Hiếu', 'B23CQCE04', 'hieutm@stu.edu.vn', '3jK4wL5l'),
('ST070', 'Cao Văn Dũng', 'B23CQCE04', 'dungcv@stu.edu.vn', '6mN7xO8m'),
('ST071', 'Đinh Thị Ngân', 'B23CQCE04', 'ngandt@stu.edu.vn', '9pQ0yR1n'),
('ST072', 'Huỳnh Trọng Phúc', 'B23CQCE04', 'phucht@stu.edu.vn', '2sT3zU4o'),
('ST073', 'Ngô Thị Hoà', 'B23CQCE04', 'hoant@stu.edu.vn', '5vW6aX7p'),
('ST074', 'Phan Văn Thanh', 'B23CQCE04', 'thanhpv@stu.edu.vn', '8yZ9bA0q'),
('ST075', 'Tô Thị Yến', 'B23CQCE04', 'yentt@stu.edu.vn', '1cK2dE3r'),
('ST076', 'Trương Minh Châu', 'B23CQCE04', 'chautm@stu.edu.vn', '4fG5eH6s'),
('ST077', 'Nguyễn Xuân Sơn', 'B23CQCE04', 'sonnx@stu.edu.vn', '7jK8fL9t'),
('ST078', 'Lê Thanh Hà', 'B23CQCE04', 'halt@stu.edu.vn', '0mN1gO2u'),
('ST079', 'Phạm Văn Kiệt', 'B23CQCE04', 'kietpv@stu.edu.vn', '3qR4hS5v'),
('ST080', 'Võ Thị Bích', 'B23CQCE04', 'bichvt@stu.edu.vn', '6tU7iV8w'),
('ST081', 'Hồ Minh Trí', 'B23CQCE04', 'trihm@stu.edu.vn', '9xY0jZ1x'),
('ST082', 'Mai Tuấn Phát', 'B23CQCE04', 'phatmt@stu.edu.vn', '2aB3kC4y'),
('ST083', 'Đào Trọng Hải', 'B23CQCE04', 'haidt@stu.edu.vn', '5dE6lF7z'),
('ST084', 'Trần Diệu Hương', 'B23CQCE04', 'huongtd@stu.edu.vn', '8gH9mI0a'),
('ST085', 'Lương Văn Tài', 'B23CQCE04', 'tailv@stu.edu.vn', '1jK2nL3b'),
('ST086', 'Huỳnh Văn Sĩ', 'B23CQCE04', 'sihv@stu.edu.vn', '4mN5oP6c'),
('ST087', 'Đinh Quốc Cường', 'B23CQCE04', 'cuongdq@stu.edu.vn', '7rS8pT9d'),
('ST088', 'Cao Thị Ngọc', 'B23CQCE04', 'ngocct@stu.edu.vn', 'OuV1qW2e'),
('ST089', 'Lý Minh Long', 'B23CQCE04', 'longlm@stu.edu.vn', '3xY4rZ5f'),
('ST090', 'Nguyễn Thị Tuyết', 'B23CQCE04', 'tuyetnt@stu.edu.vn', '6aB7sC8g'),
('ST091', 'Lê Anh Khoa', 'B23CQCE04', 'khoala@stu.edu.vn', '9dE0fT1h'),
('ST092', 'Phạm Minh Hằng', 'B23CQCE04', 'hangpm@stu.edu.vn', '2gH3uI4i'),
('ST093', 'Trần Quang Huy', 'B23CQCE04', 'huytq@stu.edu.vn', '5jK6vL7j'),
('ST094', 'Hoàng Thị Lan', 'B23CQCE04', 'lanhth@stu.edu.vn', '8mN9wO0k'),
('ST095', 'Đào Văn Trọng', 'B23CQCE04', 'trongdv@stu.edu.vn', '1pQ2xR3l'),
('ST096', 'Phan Thị Mai', 'B23CQCE04', 'maipt@stu.edu.vn', '4sT5yU6m'),
('ST097', 'Bùi Văn Chung', 'B23CQCE04', 'chungbv@stu.edu.vn', '7vW8zX9n'),
('ST098', 'Tạ Thuý Hằng', 'B23CQCE04', 'hangtt@stu.edu.vn', 'OyZ1aA2o'),
('ST099', 'Cao Văn Thịnh', 'B23CQCE04', 'thinhcv@stu.edu.vn', '3bC4bD5p'),
('ST100', 'Đinh Minh Phúc', 'B23CQCE04', 'phucdm@stu.edu.vn', '6eF7cG8q');
-- Bảng 2: Subject
INSERT INTO Subject (subject_id, name, instructor) 
VALUES
('SB001', 'Giải tích 1', 'Phạm Minh Ngọc'),
('SB002', 'Giải tích 2', 'Nguyễn Minh Anh'),
('SB003', 'Vật lý đại cương', 'Nguyễn Ngọc Lan'),
('SB004', 'Đại số', 'Đỗ Hoài Đức'),
('SB005', 'Toán rời rạc', 'Trịnh Văn Nam'),
('SB006', 'Hóa học', 'Hồ Bảo Hà'),
('SB007', 'Lập trình thống kê', 'Đỗ Ngọc Phúc'),
('SB008', 'Pháp luật 3', 'Đỗ Thị Phúc'),
('SB009', 'Kinh tế chuyên ngành', 'Hồ Quốc Hải'),
('SB010', 'Hóa học 1', 'Dương Hữu Tâm'),
('SB011', 'Thiết kế máy tính', 'Phan Công Lan'),
('SB012', 'Pháp luật hệ thống', 'Vũ Bảo Linh'),
('SB013', 'Phân tích di động', 'Hồ Minh Giang'),
('SB014', 'Vật lý lượng tử', 'Nguyễn Đức Dũng'),
('SB015', 'Giải thuật lập trình', 'Vũ Đức Trang'),
('SB016', 'Triết học Mác Lênin', 'Huỳnh Văn Tâm'),
('SB017', 'Tin học cơ sở', 'Phạm Minh Dũng'),
('SB018', 'Đại số hiện đại', 'Bùi Bảo Nam'),
('SB019', 'Triết học căn bản', 'Đặng Minh Bình'),
('SB020', 'Cơ sở an toàn thông tin', 'Lê Thị Lan'),
('SB021', 'An toàn và bảo mật', 'Trần Đức Bình'),
('SB022', 'Tư tưởng thống kê', 'Bùi Thị Thu'),
('SB023', 'Vật lý thống kê', 'Phạm Thanh Bình'),
('SB024', 'Kinh tế vĩ mô', 'Phan Quốc Huy'),
('SB025', 'Hóa học vi mô', 'Nguyễn Minh Sơn'),
('SB026', 'Cấu trúc dữ liệu hệ thống', 'Vũ Bảo Nam'),
('SB027', 'Giải thuật 2', 'Đặng Bảo Anh'),
('SB028', 'Giải thuật chuyên ngành', 'Hoàng Quốc Huy'),
('SB029', 'Quản trị hệ thống', 'Huỳnh Thị Trang'),
('SB030', 'Công nghệ phần mềm', 'Đặng Thanh Quân'),
('SB031', 'Cấu trúc dữ liệu máy tính', 'Ngô Hữu Hà'),
('SB032', 'Hệ điều hành ứng dụng', 'Huỳnh Hữu Lan'),
('SB033', 'Tư tưởng thống kê', 'Huỳnh Ngọc Thu'),
('SB034', 'Mạng máy tính', 'Lê Gia Long'),
('SB035', 'Quản trị 3', 'Ngô Thị Trang'),
('SB036', 'Pháp luật 1', 'Trần Đình Anh'),
('SB037', 'Cấu trúc dữ liệu giải thuật', 'Phạm Ngọc Dũng'),
('SB038', 'Triết học thống kê', 'Đặng Minh Trang'),
('SB039', 'Quản trị ứng dụng', 'Huỳnh Quốc Việt'),
('SB040', 'Cơ sở hệ thống', 'Hoàng Bảo Khánh'),
('SB041', 'Tư tưởng vi mô', 'Hồ Thanh Huy'),
('SB042', 'Lập trình máy tính', 'Dương Đình Việt'),
('SB043', 'Tiếng Anh chuyên ngành', 'Phạm Văn Quân'),
('SB044', 'Cơ sở máy tính', 'Phan Thanh Quân'),
('SB045', 'Mạng căn bản', 'Nguyễn Thị Khánh'),
('SB046', 'Quản trị bảo mật', 'Hoàng Đức Dũng'),
('SB047', 'Phân tích hệ thống', 'Nguyễn Thanh Huy'),
('SB048', 'Cơ sở ứng dụng', 'Hồ Đức Tâm'),
('SB049', 'Công nghệ ứng dụng', 'Đỗ Bảo Phúc'),
('SB050', 'Quản trị doanh nghiệp', 'Trần Công Phúc'),
('SB051', 'Triết học 1', 'Lê Hữu Nam'),
('SB052', 'Hóa học di động', 'Ngô Quốc Khánh'),
('SB053', 'Tiếng Anh Web', 'Hoàng Văn Anh'),
('SB054', 'Cơ sở căn bản', 'Bùi Hữu Lan'),
('SB055', 'Quản trị máy tính', 'Phạm Bảo Dũng'),
('SB056', 'Phân tích vi mô', 'Lê Quốc Tâm'),
('SB057', 'Công nghệ nâng cao', 'Bùi Thị Quân'),
('SB058', 'Toán vĩ mô', 'Dương Bảo Hải'),
('SB059', 'Công nghệ vi mô', 'Dương Minh Giang'),
('SB060', 'Tiếng Anh máy tính', 'Dương Gia Tâm'),
('SB061', 'Toán đại cương', 'Đỗ Bảo Huy'),
('SB062', 'Giải thuật bảo mật', 'Phan Quốc Cường'),
('SB063', 'Tiếng Anh căn bản', 'Phan Thị Bình'),
('SB064', 'Mạng bảo mật', 'Đặng Minh Phúc'),
('SB065', 'Kinh tế 2', 'Phan Văn Phúc'),
('SB066', 'Mạng ứng dụng', 'Huỳnh Ngọc Việt'),
('SB067', 'Xác suất nâng cao', 'Bùi Đức Long'),
('SB068', 'Pháp luật chuyên ngành', 'Phan Ngọc Phúc'),
('SB069', 'Vật lý doanh nghiệp', 'Đỗ Đức Hưng'),
('SB070', 'Thiết kế di động', 'Dương Bảo Long'),
('SB071', 'Triết học ứng dụng', 'Vũ Quốc Việt'),
('SB072', 'Triết học 2', 'Nguyễn Quốc Linh'),
('SB073', 'Hệ điều hành vĩ mô', 'Nguyễn Đình Quân'),
('SB074', 'Cơ sở 3', 'Nguyễn Thị Nam'),
('SB075', 'Hệ điều hành hệ thống', 'Dương Thị Anh'),
('SB076', 'Quản trị Web', 'Nguyễn Gia Việt'),
('SB077', 'Tiếng Anh 2', 'Huỳnh Thanh Hưng'),
('SB078', 'Toán ứng dụng', 'Hoàng Quốc Anh'),
('SB079', 'Xác suất Web', 'Hồ Hữu Trang'),
('SB080', 'Mạng 3', 'Vũ Văn Khánh'),
('SB081', 'Tiếng Anh nâng cao', 'Phạm Đình Linh'),
('SB082', 'Pháp luật di động', 'Đỗ Công Nam'),
('SB083', 'Cấu trúc dữ liệu thống kê', 'Trần Bảo Lan'),
('SB084', 'Vật lý vi mô', 'Ngô Đình Tâm'),
('SB085', 'Pháp luật 2', 'Đặng Đình Long'),
('SB086', 'Tư tưởng vĩ mô', 'Dương Thị Khánh'),
('SB087', 'Vật lý máy tính', 'Trần Công Việt'),
('SB088', 'Hóa học bảo mật', 'Đặng Thị Hưng'),
('SB089', 'Tiếng Anh nâng cao', 'Nguyễn Gia Long'),
('SB090', 'Quản trị 1', 'Bùi Văn Việt'),
('SB091', 'Phân tích đại cương', 'Phan Minh Trang'),
('SB092', 'Hệ điều hành căn bản', 'Ngô Ngọc Bình'),
('SB093', 'Toán vi mô', 'Bùi Công Anh'),
('SB094', 'Pháp luật di động', 'Huỳnh Quốc Thu'),
('SB095', 'Quản trị chuyên ngành', 'Lê Quốc Bình'),
('SB096', 'Vật lý doanh nghiệp', 'Ngô Gia Cường'),
('SB097', 'Giải thuật 2', 'Bùi Đức Hưng'),
('SB098', 'Cấu trúc dữ liệu máy tính', 'Lê Văn Trang'),
('SB099', 'Phân tích Web', 'Nguyễn Thanh Dũng'),
('SB100', 'Giải thuật vĩ mô', 'Hoàng Thanh Hà');
-- Bảng 3: Assignment
INSERT INTO Assignment (assignment_id, subject_id, name, deadline) VALUES
('AS001', 'SB002', 'Tích phân đường', '2025-10-31 22:30:00'),
('AS002', 'SB004', 'Ma trận chuyển vị', '2025-11-01 08:00:00'),
('AS003', 'SB003', 'Phản xạ toàn phần', '2025-11-02 09:00:00'),
('AS004', 'SB005', 'Sinh hoán vị', '2025-11-03 10:00:00'),
('AS005', 'SB001', 'Chuỗi số', '2025-11-04 11:00:00'),
('AS006', 'SB082', 'Bài luận web', '2027-09-03 03:31:56'),
('AS007', 'SB061', 'Nộp bài trên mobile', '2027-02-02 09:01:31'),
('AS008', 'SB075', 'Phân tích trên mobile', '2027-01-18 15:37:09'),
('AS009', 'SB006', 'Ăn mòn điện hoá', '2026-06-21 20:33:27'),
('AS010', 'SB052', 'Kiểm tra chủ đề 1', '2026-03-01 21:26:45'),
('AS011', 'SB016', 'Vật chất và ý thức', '2027-04-14 21:07:23'),
('AS012', 'SB055', 'Phân tích giữa kỳ', '2027-06-03 20:58:54'),
('AS013', 'SB083', 'Thiết kế hệ thống', '2026-07-10 05:34:15'),
('AS014', 'SB008', 'Dự án chủ đề 2', '2026-09-15 15:34:22'),
('AS015', 'SB072', 'Phân tích chủ đề 2', '2026-06-01 14:18:39'),
('AS016', 'SB065', 'Phân tích hệ thống', '2025-12-11 15:51:04'),
('AS017', 'SB090', 'Kiểm tra về Mạng', '2027-05-21 16:51:09'),
('AS018', 'SB059', 'Dự án chủ đề 1', '2026-10-10 09:25:31'),
('AS019', 'SB035', 'Bài tập trên mobile', '2027-07-12 06:11:33'),
('AS020', 'SB023', 'Nộp bài ứng dụng', '2027-06-27 15:16:06'),
('AS021', 'SB039', 'Bài luận trên mobile', '2027-10-05 10:45:33'),
('AS022', 'SB078', 'Phân tích chủ đề 1', '2027-06-28 15:20:49'),
('AS023', 'SB030', 'Kiểm tra về thuật toán', '2026-11-19 06:37:17'),
('AS024', 'SB053', 'Nộp bài trên mobile', '2027-10-03 08:57:37'),
('AS025', 'SB092', 'Bài luận về Mạng', '2026-01-29 17:57:37'),
('AS026', 'SB067', 'Kiểm tra ứng dụng', '2026-07-03 12:29:17'),
('AS027', 'SB002', 'Dự án web', '2026-06-06 09:16:37'),
('AS028', 'SB079', 'Thực hành trên mobile', '2027-01-28 11:00:30'),
('AS029', 'SB045', 'Thiết kế trên mobile', '2026-06-08 12:01:42'),
('AS030', 'SB070', 'Phân tích giữa kỳ', '2026-10-24 04:24:57'),
('AS031', 'SB020', 'Kiểm tra bảo mật', '2027-10-12 08:46:13'),
('AS032', 'SB073', 'Kiểm tra trên mobile', '2026-06-02 15:58:35'),
('AS033', 'SB031', 'Thiết kế về thuật toán', '2026-04-17 03:19:17'),
('AS034', 'SB066', 'Nộp bài chủ đề 1', '2026-06-28 18:09:41'),
('AS035', 'SB094', 'Nộp bài giữa kỳ', '2026-02-14 19:57:33'),
('AS036', 'SB017', 'Dự án cuối kỳ', '2027-01-02 09:42:26'),
('AS037', 'SB008', 'Thực hành trên mobile', '2026-02-04 09:28:06'),
('AS038', 'SB022', 'Thực hành chủ đề 2', '2025-11-12 15:06:22'),
('AS039', 'SB028', 'Báo cáo cuối kỳ', '2027-05-11 17:21:25'),
('AS040', 'SB023', 'Bài tập hệ thống', '2026-01-18 05:39:17'),
('AS041', 'SB092', 'Dự án web', '2027-01-27 20:29:49'),
('AS042', 'SB094', 'Nộp bài ứng dụng', '2027-03-05 14:05:45'),
('AS043', 'SB025', 'Bài tập chủ đề 1', '2027-07-19 13:03:20'),
('AS044', 'SB024', 'Báo cáo giữa kỳ', '2026-08-28 10:39:10'),
('AS045', 'SB086', 'Nộp bài chủ đề 1', '2025-11-29 08:23:39'),
('AS046', 'SB084', 'Dự án ứng dụng', '2025-12-07 20:55:53'),
('AS047', 'SB066', 'Phân tích hệ thống', '2027-03-29 23:52:38'),
('AS048', 'SB027', 'Bài luận hệ thống', '2027-05-04 22:55:53'),
('AS049', 'SB034', 'Bài tập giữa kỳ', '2027-09-13 04:45:29'),
('AS050', 'SB091', 'Bài tập bảo mật', '2027-08-09 01:30:18'),
('AS051', 'SB043', 'Phân tích chủ đề Enviroment', '2026-11-14 04:49:00'),
('AS052', 'SB021', 'Bài tập trên classroom', '2027-09-08 17:44:24'),
('AS053', 'SB049', 'Báo cáo về CSDL', '2025-12-19 02:56:59'),
('AS054', 'SB018', 'Làm bài trên LMS', '2027-07-31 16:02:11'),
('AS055', 'SB009', 'Báo cáo cuối kỳ', '2027-02-01 00:21:06'),
('AS056', 'SB098', 'Nộp bài về thuật toán', '2026-04-17 14:34:55'),
('AS057', 'SB074', 'Báo cáo ứng dụng', '2027-01-16 20:38:08'),
('AS058', 'SB081', 'Kiểm tra web', '2026-06-07 00:14:36'),
('AS059', 'SB073', 'Kiểm tra web', '2026-08-22 15:28:12'),
('AS060', 'SB072', 'Dự án ứng dụng', '2025-12-23 11:04:12'),
('AS061', 'SB062', 'Thực hành về thuật toán', '2027-01-26 05:55:51'),
('AS062', 'SB007', 'Báo cáo bảo mật', '2026-01-16 08:27:09'),
('AS063', 'SB065', 'Nộp bài trên mobile', '2026-05-20 20:56:22'),
('AS064', 'SB015', 'Bài tập chủ đề 2', '2027-01-17 17:07:02'),
('AS065', 'SB003', 'Phân tích về thuật toán', '2027-09-12 02:12:52'),
('AS066', 'SB089', 'Kiểm tra chủ đề 2', '2027-01-15 01:47:40'),
('AS067', 'SB062', 'Thiết kế về CSDL', '2025-12-04 08:51:10'),
('AS068', 'SB014', 'Quang học', '2027-04-01 17:56:43'),
('AS069', 'SB004', 'Dự án cuối kỳ', '2026-07-17 16:52:37'),
('AS070', 'SB059', 'Thiết kế cuối kỳ', '2025-12-18 09:13:03'),
('AS071', 'SB084', 'Thiết kế web', '2026-12-03 01:35:00'),
('AS072', 'SB079', 'Kiểm tra web', '2027-10-08 02:59:53'),
('AS073', 'SB063', 'Thực hành về Mạng', '2027-07-19 01:53:29'),
('AS074', 'SB093', 'Bài luận cuối kỳ', '2027-09-19 12:37:08'),
('AS075', 'SB040', 'Dự án bảo mật', '2026-11-10 06:26:16'),
('AS076', 'SB044', 'Kiểm tra giữa kỳ', '2027-09-24 00:03:27'),
('AS077', 'SB047', 'Dự án về thuật toán', '2027-03-18 14:31:10'),
('AS078', 'SB031', 'Dự án về CSDL', '2026-09-29 17:41:25'),
('AS079', 'SB043', 'Kiểm tra về CSDL', '2026-11-13 01:16:27'),
('AS080', 'SB019', 'Bài tập giữa kỳ', '2026-02-06 03:06:46'),
('AS081', 'SB020', 'Kiểm tra chủ đề 2', '2027-10-01 10:57:42'),
('AS082', 'SB003', 'Nộp bài giữa kỳ', '2027-05-24 02:03:41'),
('AS083', 'SB078', 'Thực hành trên mobile', '2027-08-30 15:49:51'),
('AS084', 'SB037', 'Bài tập về chia và trị', '2026-07-10 22:41:52'),
('AS085', 'SB001', 'Bài luận hệ thống', '2026-06-30 13:24:31'),
('AS086', 'SB010', 'Nộp bài hệ thống', '2026-06-01 19:31:15'),
('AS087', 'SB083', 'Nộp bài hệ thống', '2026-06-03 12:56:23'),
('AS088', 'SB025', 'Thực hành ứng dụng', '2026-02-02 16:05:12'),
('AS089', 'SB090', 'Nộp bài ứng dụng', '2026-08-16 02:11:52'),
('AS090', 'SB087', 'Phân tích chủ đề 1', '2025-11-12 08:39:35'),
('AS091', 'SB091', 'Phân tích bảo mật', '2027-02-19 06:45:01'),
('AS092', 'SB026', 'Nộp bài về Mạng', '2025-12-27 19:54:36'),
('AS093', 'SB087', 'Nộp bài chủ đề 2', '2026-05-23 17:03:39'),
('AS094', 'SB099', 'Kiểm tra hệ thống', '2026-04-08 04:53:04'),
('AS095', 'SB019', 'Nộp bài ứng dụng', '2026-02-01 02:37:47'),
('AS096', 'SB003', 'Nộp bài hệ thống', '2026-09-08 18:08:32'),
('AS097', 'SB100', 'Phân tích chủ đề 1', '2027-08-09 13:15:27'),
('AS098', 'SB076', 'Bài tập giữa kỳ', '2027-08-28 03:43:07'),
('AS099', 'SB013', 'Báo cáo về CSDL', '2026-05-02 03:25:26'),
('AS100', 'SB028', 'Thiết kế về CSDL', '2027-05-23 05:36:19');
-- Bảng 4: Note
INSERT INTO Note (note_id, subject_id, title, content, creation_date) 
VALUES
('NT001', 'SB001', 'Ghi chú 1', 'Lệnh Join', '2025-11-23 12:23:56'),
('NT002', 'SB002', 'Ghi chú 2', 'Ôn tập OOP', '2025-11-10 02:23:56'),
('NT003', 'SB003', 'Ghi chú 3', 'Mô hình 7 lớp', '2025-11-27 23:11:10'),
('NT004', 'SB004', 'Ghi chú 4', 'Tiến trình process', '2025-12-01 12:56:08'),
('NT005', 'SB005', 'Ghi chú 5', 'Học đồ thị', '2025-11-09 07:00:00'),
('NT006', 'SB006', 'Ghi chú 6', 'Cấu trúc dữ liệu', '2025-12-07 08:06:59'),
('NT007', 'SB007', 'Ghi chú 7', 'Thuật toán tìm kiếm', '2025-12-03 15:30:10'),
('NT008', 'SB008', 'Ghi chú 8', 'Giao thức HTTP', '2025-12-05 09:12:45'),
('NT009', 'SB009', 'Ghi chú 9', 'Lệnh Linux cơ bản', '2025-12-06 18:05:00'),
('NT010', 'SB010', 'Ghi chú 10', 'Các loại bộ nhớ', '2025-12-08 11:22:33'),
('NT011', 'SB011', 'Ghi chú 11', 'Ôn tập Java Core', '2025-12-22 10:15:30'),
('NT012', 'SB012', 'Ghi chú 12', 'Lý thuyết đồ thị', '2025-12-23 11:20:14'),
('NT013', 'SB013', 'Ghi chú 13', 'Cây nhị phân', '2025-12-24 14:05:00'),
('NT014', 'SB014', 'Ghi chú 14', 'SQL Injection', '2025-12-25 16:30:45'),
('NT015', 'SB015', 'Ghi chú 15', 'Mô hình OSI', '2025-12-26 09:00:22'),
('NT016', 'SB016', 'Ghi chú 16', 'Địa chỉ IP', '2025-12-27 13:45:10'),
('NT017', 'SB017', 'Ghi chú 17', 'Lệnh chmod', '2025-12-28 15:12:05'),
('NT018', 'SB018', 'Ghi chú 18', 'Quản lý bộ nhớ', '2025-12-29 18:00:00'),
('NT019', 'SB019', 'Ghi chú 19', 'SQL Triggers', '2025-12-30 20:10:55'),
('NT020', 'SB020', 'Ghi chú 20', 'Lớp và đối tượng', '2025-12-31 08:30:00'),
('NT021', 'SB021', 'Ghi chú 21', 'Tính kế thừa', '2026-01-01 11:11:11'),
('NT022', 'SB022', 'Ghi chú 22', 'Interface trong Java', '2026-01-02 12:00:00'),
('NT023', 'SB023', 'Ghi chú 23', 'Struct trong C', '2026-01-03 17:45:20'),
('NT024', 'SB024', 'Ghi chú 24', 'Vòng lặp For', '2026-01-04 19:30:15'),
('NT025', 'SB025', 'Ghi chú 25', 'Câu lệnh Case', '2026-01-05 21:05:00'),
('NT026', 'SB026', 'Ghi chú 26', 'Big O Notation', '2026-01-06 10:00:00'),
('NT027', 'SB027', 'Ghi chú 27', 'Giải thuật sắp xếp', '2026-01-07 14:22:30'),
('NT028', 'SB028', 'Ghi chú 28', 'SSH và Telnet', '2026-01-08 16:00:00'),
('NT029', 'SB029', 'Ghi chú 29', 'Firewall', '2026-01-09 09:10:40'),
('NT030', 'SB030', 'Ghi chú 30', 'Virtualization', '2026-01-10 11:55:00'),
('NT031', 'SB031', 'Ghi chú 31', 'Docker cơ bản', '2026-01-11 13:30:10'),
('NT032', 'SB032', 'Ghi chú 32', 'Git commands', '2026-01-12 15:00:25'),
('NT033', 'SB033', 'Ghi chú 33', 'Merge sort', '2026-01-13 18:18:18'),
('NT034', 'SB034', 'Ghi chú 34', 'Quick sort', '2026-01-14 20:00:00'),
('NT035', 'SB035', 'Ghi chú 35', 'Heap sort', '2026-01-15 07:30:00'),
('NT036', 'SB036', 'Ghi chú 36', 'Binary Search Tree', '2026-01-16 09:45:00'),
('NT037', 'SB037', 'Ghi chú 37', 'Hashing', '2026-01-17 11:00:00'),
('NT038', 'SB038', 'Ghi chú 38', 'Collision handling', '2026-01-18 14:20:30'),
('NT039', 'SB039', 'Ghi chú 39', 'TCP Handshake', '2026-01-19 16:50:00'),
('NT040', 'SB040', 'Ghi chú 40', 'UDP Protocol', '2026-01-20 19:00:10'),
('NT041', 'SB041', 'Ghi chú 41', 'DNS', '2026-01-21 22:15:00'),
('NT042', 'SB042', 'Ghi chú 42', 'DHCP', '2026-01-22 08:05:00'),
('NT043', 'SB043', 'Ghi chú 43', 'HTTP/HTTPS', '2026-01-23 10:30:00'),
('NT044', 'SB044', 'Ghi chú 44', 'SSL/TLS', '2026-01-24 12:00:00'),
('NT045', 'SB045', 'Ghi chú 45', 'Wireshark filters', '2026-01-25 15:10:20'),
('NT046', 'SB046', 'Ghi chú 46', 'ARP Spoofing', '2026-01-26 17:30:00'),
('NT047', 'SB047', 'Ghi chú 47', 'MAC Address', '2026-01-27 19:45:50'),
('NT048', 'SB048', 'Ghi chú 48', 'Subnetting', '2026-01-28 21:00:00'),
('NT049', 'SB049', 'Ghi chú 49', 'VLAN', '2026-01-29 09:15:00'),
('NT050', 'SB050', 'Ghi chú 50', 'Routing protocols', '2026-01-30 11:00:30'),
('NT051', 'SB051', 'Ghi chú 51', 'OSI Layer 1', '2026-01-31 13:30:00'),
('NT052', 'SB052', 'Ghi chú 52', 'OSI Layer 2', '2026-02-01 15:45:00'),
('NT053', 'SB053', 'Ghi chú 53', 'OSI Layer 3', '2026-02-02 17:00:15'),
('NT054', 'SB054', 'Ghi chú 54', 'OSI Layer 4', '2026-02-03 19:10:00'),
('NT055', 'SB055', 'Ghi chú 55', 'OSI Layer 5', '2026-02-04 21:30:00'),
('NT056', 'SB056', 'Ghi chú 56', 'OSI Layer 6', '2026-02-05 08:00:00'),
('NT057', 'SB057', 'Ghi chú 57', 'OSI Layer 7', '2026-02-06 10:20:00'),
('NT058', 'SB058', 'Ghi chú 58', 'IP Fragmentation', '2026-02-07 12:40:00'),
('NT059', 'SB059', 'Ghi chú 59', 'ICMP Protocol', '2026-02-08 14:00:50'),
('NT060', 'SB060', 'Ghi chú 60', 'Agile vs Waterfall', '2026-02-09 16:30:00'),
('NT061', 'SB061', 'Ghi chú 61', 'Scrum methodology', '2026-02-10 18:00:00'),
('NT062', 'SB062', 'Ghi chú 62', 'Use Case diagrams', '2026-02-11 20:20:20'),
('NT063', 'SB063', 'Ghi chú 63', 'Class diagrams', '2026-02-12 22:00:00'),
('NT064', 'SB064', 'Ghi chú 64', 'Sequence diagrams', '2026-02-13 09:00:00'),
('NT065', 'SB065', 'Ghi chú 65', 'Activity diagrams', '2026-02-14 11:30:00'),
('NT066', 'SB066', 'Ghi chú 66', 'State diagrams', '2026-02-15 13:45:00'),
('NT067', 'SB067', 'Ghi chú 67', 'Component diagrams', '2026-02-16 15:00:00'),
('NT068', 'SB068', 'Ghi chú 68', 'Deployment diagrams', '2026-02-17 17:15:00'),
('NT069', 'SB069', 'Ghi chú 69', 'SQL Constraints', '2026-02-18 19:30:00'),
('NT070', 'SB070', 'Ghi chú 70', 'Primary Key', '2026-02-19 21:45:00'),
('NT071', 'SB071', 'Ghi chú 71', 'Foreign Key', '2026-02-20 08:30:00'),
('NT072', 'SB072', 'Ghi chú 72', 'Unique Key', '2026-02-21 10:00:00'),
('NT073', 'SB073', 'Ghi chú 73', 'Check Constraint', '2026-02-22 12:10:00'),
('NT074', 'SB074', 'Ghi chú 74', 'SQL Index', '2026-02-23 14:20:00'),
('NT075', 'SB075', 'Ghi chú 75', 'View trong SQL', '2026-02-24 16:30:00'),
('NT076', 'SB076', 'Ghi chú 76', 'Stored Procedure', '2026-02-25 18:40:00'),
('NT077', 'SB077', 'Ghi chú 77', 'SQL Functions', '2026-02-26 20:50:00'),
('NT078', 'SB078', 'Ghi chú 78', 'Java Exceptions', '2026-02-27 09:00:00'),
('NT079', 'SB079', 'Ghi chú 79', 'Try-catch block', '2026-02-28 11:15:00'),
('NT080', 'SB080', 'Ghi chú 80', 'Java Collections', '2026-03-01 13:30:00'),
('NT081', 'SB081', 'Ghi chú 81', 'ArrayList vs LinkedList', '2026-03-02 15:45:00'),
('NT082', 'SB082', 'Ghi chú 82', 'HashMap', '2026-03-03 17:00:00'),
('NT083', 'SB083', 'Ghi chú 83', 'HashSet', '2026-03-04 19:15:00'),
('NT084', 'SB084', 'Ghi chú 84', 'Multithreading', '2026-03-05 21:30:00'),
('NT085', 'SB085', 'Ghi chú 85', 'Java Synchronization', '2026-03-06 08:45:00'),
('NT086', 'SB086', 'Ghi chú 86', 'Deadlock', '2026-03-07 10:00:00'),
('NT087', 'SB087', 'Ghi chú 87', 'File I/O', '2026-03-08 12:15:00'),
('NT088', 'SB088', 'Ghi chú 88', 'Java Streams', '2026-03-09 14:30:00'),
('NT089', 'SB089', 'Ghi chú 89', 'Lambda expressions', '2026-03-10 16:45:00'),
('NT090', 'SB090', 'Ghi chú 90', 'API là gì', '2026-03-11 18:00:00'),
('NT091', 'SB091', 'Ghi chú 91', 'RESTful API', '2026-03-12 20:15:00'),
('NT092', 'SB092', 'Ghi chú 92', 'JSON', '2026-03-13 09:30:00'),
('NT093', 'SB093', 'Ghi chú 93', 'XML', '2026-03-14 11:45:00'),
('NT094', 'SB094', 'Ghi chú 94', 'Semaphore', '2026-03-15 13:00:00'),
('NT095', 'SB095', 'Ghi chú 95', 'Mutex', '2026-03-16 15:15:00'),
('NT096', 'SB096', 'Ghi chú 96', 'CPU Scheduling', '2026-03-17 17:30:00'),
('NT097', 'SB097', 'Ghi chú 97', 'Page Replacement', '2026-03-18 19:45:00'),
('NT098', 'SB098', 'Ghi chú 98', 'File systems', '2026-03-19 21:00:00'),
('NT099', 'SB099', 'Ghi chú 99', 'RAID', '2026-03-20 08:00:00'),
('NT100', 'SB100', 'Ghi chú 100', 'Backup and Recovery', '2026-03-21 10:00:00');
-- Bảng 5: Schedule
INSERT INTO Schedule (schedule_id, student_id, name) VALUES
('SC001', 'ST001', 'Thời khóa biểu Tuần 1 - Kỳ 1'),
('SC002', 'ST002', 'Thời khóa biểu Chuyên đề 1'),
('SC003', 'ST003', 'Thời khóa biểu Kỳ 1'),
('SC004', 'ST004', 'Thời khóa biểu Thực hành lab 1'),
('SC005', 'ST005', 'Thời khóa biểu Tuần 2 - Kỳ 1'),
('SC006', 'ST006', 'Thời khóa biểu Chuyên đề 2'),
('SC007', 'ST007', 'Thời khóa biểu Kỳ 2'),
('SC008', 'ST008', 'Thời khóa biểu Thực hành lab 2'),
('SC009', 'ST009', 'Thời khóa biểu Tuần 3 - Kỳ 1'),
('SC010', 'ST010', 'Thời khóa biểu Chuyên đề 3'),
('SC011', 'ST011', 'Thời khóa biểu Kỳ 3'),
('SC012', 'ST012', 'Thời khóa biểu Thực hành lab 3'),
('SC013', 'ST013', 'Thời khóa biểu Tuần 4 - Kỳ 1'),
('SC014', 'ST014', 'Thời khóa biểu Chuyên đề 4'),
('SC015', 'ST015', 'Thời khóa biểu Kỳ 4'),
('SC016', 'ST016', 'Thời khóa biểu Thực hành lab 4'),
('SC017', 'ST017', 'Thời khóa biểu Tuần 5 - Kỳ 2'),
('SC018', 'ST018', 'Thời khóa biểu Chuyên đề 5'),
('SC019', 'ST019', 'Thời khóa biểu Kỳ 5'),
('SC020', 'ST020', 'Thời khóa biểu Thực hành lab 5'),
('SC021', 'ST021', 'Thời khóa biểu Tuần 6 - Kỳ 2'),
('SC022', 'ST022', 'Thời khóa biểu Chuyên đề 6'),
('SC023', 'ST023', 'Thời khóa biểu Kỳ 6'),
('SC024', 'ST024', 'Thời khóa biểu Thực hành lab 6'),
('SC025', 'ST025', 'Thời khóa biểu Tuần 7 - Kỳ 2'),
('SC026', 'ST026', 'Thời khóa biểu Chuyên đề 7'),
('SC027', 'ST027', 'Thời khóa biểu Kỳ 7'),
('SC028', 'ST028', 'Thời khóa biểu Thực hành lab 7'),
('SC029', 'ST029', 'Thời khóa biểu Tuần 8 - Kỳ 2'),
('SC030', 'ST030', 'Thời khóa biểu Chuyên đề 8'),
('SC031', 'ST031', 'Thời khóa biểu Kỳ 8'),
('SC032', 'ST032', 'Thời khóa biểu Thực hành lab 8'),
('SC033', 'ST033', 'Thời khóa biểu Tuần 9 - Kỳ 3'),
('SC034', 'ST034', 'Thời khóa biểu Chuyên đề 9'),
('SC035', 'ST035', 'Thời khóa biểu Kỳ 9'),
('SC036', 'ST036', 'Thời khóa biểu Thực hành lab 9'),
('SC037', 'ST037', 'Thời khóa biểu Tuần 10 - Kỳ 3'),
('SC038', 'ST038', 'Thời khóa biểu Chuyên đề 10'),
('SC039', 'ST039', 'Thời khóa biểu Kỳ 10'),
('SC040', 'ST040', 'Thời khóa biểu Thực hành lab 10'),
('SC041', 'ST041', 'Thời khóa biểu Tuần 11 - Kỳ 3'),
('SC042', 'ST042', 'Thời khóa biểu Chuyên đề 11'),
('SC043', 'ST043', 'Thời khóa biểu Kỳ 11'),
('SC044', 'ST044', 'Thời khóa biểu Thực hành lab 11'),
('SC045', 'ST045', 'Thời khóa biểu Tuần 12 - Kỳ 3'),
('SC046', 'ST046', 'Thời khóa biểu Chuyên đề 12'),
('SC047', 'ST047', 'Thời khóa biểu Kỳ 12'),
('SC048', 'ST048', 'Thời khóa biểu Thực hành lab 12'),
('SC049', 'ST049', 'Thời khóa biểu Tuần 13 - Kỳ 4'),
('SC050', 'ST050', 'Thời khóa biểu Chuyên đề 13'),
('SC051', 'ST051', 'Thời khóa biểu Kỳ 13'),
('SC052', 'ST052', 'Thời khóa biểu Thực hành lab 13'),
('SC053', 'ST053', 'Thời khóa biểu Tuần 14 - Kỳ 4'),
('SC054', 'ST054', 'Thời khóa biểu Chuyên đề 14'),
('SC055', 'ST055', 'Thời khóa biểu Kỳ 14'),
('SC056', 'ST056', 'Thời khóa biểu Thực hành lab 14'),
('SC057', 'ST057', 'Thời khóa biểu Tuần 15 - Kỳ 4'),
('SC058', 'ST058', 'Thời khóa biểu Chuyên đề 15'),
('SC059', 'ST059', 'Thời khóa biểu Kỳ 15'),
('SC060', 'ST060', 'Thời khóa biểu Thực hành lab 15'),
('SC061', 'ST061', 'Thời khóa biểu Tuần 16 - Kỳ 4'),
('SC062', 'ST062', 'Thời khóa biểu Chuyên đề 16'),
('SC063', 'ST063', 'Thời khóa biểu Kỳ 16'),
('SC064', 'ST064', 'Thời khóa biểu Thực hành lab 16'),
('SC065', 'ST065', 'Thời khóa biểu Tuần 17 - Kỳ 5'),
('SC066', 'ST066', 'Thời khóa biểu Chuyên đề 17'),
('SC067', 'ST067', 'Thời khóa biểu Kỳ 17'),
('SC068', 'ST068', 'Thời khóa biểu Thực hành lab 17'),
('SC069', 'ST069', 'Thời khóa biểu Tuần 18 - Kỳ 5'),
('SC070', 'ST070', 'Thời khóa biểu Chuyên đề 18'),
('SC071', 'ST071', 'Thời khóa biểu Kỳ 18'),
('SC072', 'ST072', 'Thời khóa biểu Thực hành lab 18'),
('SC073', 'ST073', 'Thời khóa biểu Tuần 19 - Kỳ 5'),
('SC074', 'ST074', 'Thời khóa biểu Chuyên đề 19'),
('SC075', 'ST075', 'Thời khóa biểu Kỳ 19'),
('SC076', 'ST076', 'Thời khóa biểu Thực hành lab 19'),
('SC077', 'ST077', 'Thời khóa biểu Tuần 20 - Kỳ 5'),
('SC078', 'ST078', 'Thời khóa biểu Chuyên đề 20'),
('SC079', 'ST079', 'Thời khóa biểu Kỳ 20'),
('SC080', 'ST080', 'Thời khóa biểu Thực hành lab 20'),
('SC081', 'ST081', 'Thời khóa biểu Tuần 21 - Kỳ 6'),
('SC082', 'ST082', 'Thời khóa biểu Chuyên đề 21'),
('SC083', 'ST083', 'Thời khóa biểu Kỳ 21'),
('SC084', 'ST084', 'Thời khóa biểu Thực hành lab 21'),
('SC085', 'ST085', 'Thời khóa biểu Tuần 22 - Kỳ 6'),
('SC086', 'ST086', 'Thời khóa biểu Chuyên đề 22'),
('SC087', 'ST087', 'Thời khóa biểu Kỳ 22'),
('SC088', 'ST088', 'Thời khóa biểu Thực hành lab 22'),
('SC089', 'ST089', 'Thời khóa biểu Tuần 23 - Kỳ 6'),
('SC090', 'ST090', 'Thời khóa biểu Chuyên đề 23'),
('SC091', 'ST091', 'Thời khóa biểu Kỳ 23'),
('SC092', 'ST092', 'Thời khóa biểu Thực hành lab 23'),
('SC093', 'ST093', 'Thời khóa biểu Tuần 24 - Kỳ 6'),
('SC094', 'ST094', 'Thời khóa biểu Chuyên đề 24'),
('SC095', 'ST095', 'Thời khóa biểu Kỳ 24'),
('SC096', 'ST096', 'Thời khóa biểu Thực hành lab 24'),
('SC097', 'ST097', 'Thời khóa biểu Tuần 25 - Kỳ 7'),
('SC098', 'ST098', 'Thời khóa biểu Chuyên đề 25'),
('SC099', 'ST099', 'Thời khóa biểu Kỳ 25'),
('SC100', 'ST100', 'Thời khóa biểu Thực hành lab 25');
-- Bảng 6: Event
INSERT INTO Event (event_id, schedule_id, name, time) 
VALUES
('EV001', 'SC001', 'Thi giữa kì môn cơ sở dữ liệu', '2025-10-31 12:21:53'),
('EV002', 'SC002', 'Học mmt', '2025-10-30 13:11:34'),
('EV003', 'SC003', 'Tham gia hoạt động ngoại khoá', '2025-11-23 08:11:34'),
('EV004', 'SC004', 'Làm bài tập môn hệ điều hành', '2025-12-05 03:11:34'),
('EV005', 'SC005', 'Thi cuối kỳ', '2025-12-25 08:11:23'),
('EV006', 'SC006', 'Báo cáo đồ án', '2025-12-20 09:00:00'),
('EV007', 'SC007', 'Học bù giải tích', '2025-12-10 13:30:00'),
('EV008', 'SC008', 'Thi thực hành C++', '2025-12-22 15:00:00'),
('EV009', 'SC009', 'Họp nhóm làm bài tập', '2025-12-11 18:00:00'),
('EV010', 'SC010', 'Sinh hoạt lớp', '2025-12-12 16:30:00'),
('EV011', 'SC011', 'Nộp bài tập lớn', '2025-12-15 23:59:59'),
('EV012', 'SC012', 'Thi cuối kỳ mạng', '2025-12-26 07:30:00'),
('EV013', 'SC013', 'Thuyết trình Kỹ năng mềm', '2025-11-30 10:00:00'),
('EV014', 'SC014', 'Tham quan FPT Software', '2025-11-28 08:00:00'),
('EV015', 'SC015', 'Nộp báo cáo thực tập', '2026-01-05 17:00:00'),
('EV016', 'SC016', 'Bảo vệ bài tập lớn', '2026-01-07 09:15:00'),
('EV017', 'SC017', 'Học quân sự', '2026-01-10 07:00:00'),
('EV018', 'SC018', 'Tư vấn học đường', '2025-12-01 14:00:00'),
('EV019', 'SC019', 'Họp lớp', '2025-12-02 11:00:00'),
('EV020', 'SC020', 'Thi lại Xác suất', '2026-01-15 13:30:00'),
('EV021', 'SC021', 'Học online Tiếng Anh', '2025-12-03 19:00:00'),
('EV022', 'SC022', 'Thực hành lab Mạng', '2025-12-04 09:30:00'),
('EV023', 'SC023', 'Thuyết trình nhóm 1', '2025-12-08 10:00:00'),
('EV024', 'SC024', 'Seminar chuyên đề AI', '2025-12-09 15:00:00'),
('EV025', 'SC025', 'Kiểm tra Tiếng Anh', '2025-12-11 08:00:00'),
('EV026', 'SC026', 'Học kỹ năng mềm', '2025-12-13 14:00:00'),
('EV027', 'SC027', 'Tham quan công ty', '2025-12-14 08:30:00'),
('EV028', 'SC028', 'Phỏng vấn thực tập', '2025-12-16 10:30:00'),
('EV029', 'SC029', 'Làm đồ án tốt nghiệp', '2026-01-20 09:00:00'),
('EV030', 'SC030', 'Học chuyên đề 1', '2026-01-21 13:00:00'),
('EV031', 'SC031', 'Học chuyên đề 2', '2026-01-22 13:00:00'),
('EV032', 'SC032', 'Thi vấn đáp Triết', '2026-01-23 08:00:00'),
('EV033', 'SC033', 'Báo cáo tuần 1', '2025-12-07 17:00:00'),
('EV034', 'SC034', 'Thi Tin học đại cương', '2025-12-17 15:30:00'),
('EV035', 'SC035', 'Thi Xác suất thống kê', '2025-12-18 09:00:00'),
('EV036', 'SC036', 'Học bù T3', '2025-12-19 13:00:00'),
('EV037', 'SC037', 'Ôn thi T4', '2025-12-21 19:00:00'),
('EV038', 'SC038', 'Hạn nộp học phí', '2025-12-30 17:00:00'),
('EV039', 'SC039', 'Họp nhóm 1', '2025-12-23 10:00:00'),
('EV040', 'SC040', 'Họp nhóm 2', '2025-12-24 10:00:00'),
('EV041', 'SC041', 'Thi Triết học', '2026-01-12 07:30:00'),
('EV042', 'SC042', 'Thi Kinh tế chính trị', '2026-01-13 07:30:00'),
('EV043', 'SC043', 'Thi Chủ nghĩa xã hội', '2026-01-14 07:30:00'),
('EV044', 'SC044', 'Thi Tư tưởng HCM', '2026-01-16 07:30:00'),
('EV045', 'SC045', 'Thi Lịch sử Đảng', '2026-01-17 07:30:00'),
('EV046', 'SC046', 'Thi Cấu trúc dữ liệu', '2026-01-18 13:30:00'),
('EV047', 'SC047', 'Thi Giải thuật', '2026-01-19 13:30:00'),
('EV048', 'SC048', 'Thi Lập trình C++', '2026-01-20 13:30:00'),
('EV049', 'SC049', 'Thi Lập trình Java', '2026-01-21 09:00:00'),
('EV050', 'SC050', 'Thi Mạng máy tính', '2026-01-22 09:00:00'),
('EV051', 'SC051', 'Thi Hệ điều hành', '2026-01-23 09:00:00'),
('EV052', 'SC052', 'Thực hành Mạng', '2025-12-27 13:00:00'),
('EV053', 'SC053', 'Thực hành HĐH', '2025-12-28 13:00:00'),
('EV054', 'SC054', 'Thi Cơ sở dữ liệu', '2026-01-24 07:30:00'),
('EV055', 'SC055', 'Thực hành CSDL', '2025-12-29 09:00:00'),
('EV056', 'SC056', 'Thi An toàn thông tin', '2026-01-25 07:30:00'),
('EV057', 'SC057', 'Thi Công nghệ phần mềm', '2026-01-26 13:30:00'),
('EV058', 'SC058', 'Thi Lập trình web', '2026-01-27 13:30:00'),
('EV059', 'SC059', 'Thi Lập trình di động', '2026-01-28 09:00:00'),
('EV060', 'SC060', 'Báo cáo Trí tuệ nhân tạo', '2026-01-29 09:00:00'),
('EV061', 'SC061', 'Báo cáo Học máy', '2026-01-30 09:00:00'),
('EV062', 'SC062', 'Báo cáo Xử lý ảnh', '2026-01-31 09:00:00'),
('EV063', 'SC063', 'Báo cáo Xử lý ngôn ngữ', '2026-02-01 09:00:00'),
('EV064', 'SC064', 'Báo cáo Big Data', '2026-02-02 13:00:00'),
('EV065', 'SC065', 'Báo cáo IoT', '2026-02-03 13:00:00'),
('EV066', 'SC066', 'Báo cáo Điện toán đám mây', '2026-02-04 13:00:00'),
('EV067', 'SC067', 'Thi Kỹ thuật vi xử lý', '2026-02-05 07:30:00'),
('EV068', 'SC068', 'Thi Mạch điện tử', '2026-02-06 07:30:00'),
('EV069', 'SC069', 'Thực hành Mạch', '2026-01-02 09:00:00'),
('EV070', 'SC070', 'Thi Vật lý 1', '2025-12-30 07:30:00'),
('EV071', 'SC071', 'Thi Vật lý 2', '2025-12-31 07:30:00'),
('EV072', 'SC072', 'Thi Giải tích 1', '2026-01-03 13:30:00'),
('EV073', 'SC073', 'Thi Giải tích 2', '2026-01-04 13:30:00'),
('EV074', 'SC074', 'Thi Đại số tuyến tính', '2026-01-06 09:00:00'),
('EV075', 'SC075', 'Thi Toán rời rạc', '2026-01-07 09:00:00'),
('EV076', 'SC076', 'Học bù Toán', '2025-12-13 09:00:00'),
('EV077', 'SC077', 'Học bù Lý', '2025-12-14 09:00:00'),
('EV078', 'SC078', 'Họp cố vấn', '2025-12-15 11:00:00'),
('EV079', 'SC079', 'Thi Pháp luật đại cương', '2026-01-08 15:00:00'),
('EV080', 'SC080', 'Học Tâm lý học', '2026-01-09 15:00:00'),
('EV081', 'SC081', 'Học Văn hóa doanh nghiệp', '2026-01-10 15:00:00'),
('EV082', 'SC082', 'Học Khởi nghiệp', '2026-01-11 15:00:00'),
('EV083', 'SC083', 'Học Quản trị dự án', '2026-01-12 15:00:00'),
('EV084', 'SC084', 'Thi phòng máy 1', '2026-02-07 09:00:00'),
('EV085', 'SC085', 'Thi phòng máy 2', '2026-02-07 13:00:00'),
('EV086', 'SC086', 'Thi phòng máy 3', '2026-02-08 09:00:00'),
('EV087', 'SC087', 'Thi tự luận 1', '2026-02-08 13:00:00'),
('EV088', 'SC088', 'Thi tự luận 2', '2026-02-09 09:00:00'),
('EV089', 'SC089', 'Thi trắc nghiệm', '2026-02-09 13:00:00'),
('EV090', 'SC090', 'Hạn phúc khảo', '2026-02-15 17:00:00'),
('EV091', 'SC091', 'Đăng ký tín chỉ', '2026-02-16 09:00:00'),
('EV092', 'SC092', 'Hủy học phần', '2026-02-17 09:00:00'),
('EV093', 'SC093', 'Tư vấn tín chỉ', '2026-02-18 09:00:00'),
('EV094', 'SC094', 'Nghỉ lễ', '2026-01-01 00:00:00'),
('EV095', 'SC095', 'Nghỉ Tết', '2026-02-19 00:00:00'),
('EV096', 'SC096', 'Hoạt động tình nguyện', '2026-03-01 08:00:00'),
('EV097', 'SC097', 'Họp Đoàn', '2026-03-02 17:00:00'),
('EV098', 'SC098', 'Họp Ban cán sự', '2026-03-03 17:00:00'),
('EV099', 'SC099', 'Khám sức khỏe', '2026-03-05 08:00:00'),
('EV100', 'SC100', 'Lễ tốt nghiệp', '2026-06-15 08:00:00');

-- Các truy vấn 
-- 1. Thêm 1 sinh viên mới
INSERT INTO Student (student_id, name, class_id, email, password) 
VALUES
('ST101', 'Phan Anh Dũng', 'B23CQCE04', 'dungpa@stu.edu.vn', 'gO8Ht42t');
-- 2. Xóa sinh viên cụ thể có id = ST005
DELETE FROM Student_Subject WHERE student_id = 'ST005';
DELETE FROM Student_Assignment WHERE student_id = 'ST005';
DELETE FROM Event
WHERE schedule_id IN (SELECT schedule_id FROM Schedule WHERE student_id = 'ST005');
DELETE FROM Schedule WHERE student_id = 'ST005';
DELETE FROM Student WHERE student_id = 'ST005';
-- 3. Thêm bài tập mới 
INSERT INTO Assignment (assignment_id, subject_id, name, deadline)
VALUES 
('AS105', 'SB031', 'Phân tích dữ liệu', '2026-01-15 23:59:59');
-- 4. Xem bài tập đã hoàn thành
SELECT * FROM Assignment 
WHERE status = 'Complete';
-- 5. Thêm môn học mới
INSERT INTO Subject (subject_id, name, instructor)
VALUES 
('SB103', 'Trí tuệ nhân tạo', 'Bùi Quốc Khánh');
-- 6. Xóa môn 'Vật lý thống kê' và tất cả dữ liệu liên quan
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Assignment
WHERE subject_id IN (SELECT subject_id FROM Subject WHERE name = 'Vật lý thống kê');
DELETE FROM Note
WHERE subject_id IN (SELECT subject_id FROM Subject WHERE name = 'Vật lý thống kê');
DELETE FROM Subject
WHERE name = 'Vật lý thống kê';
SET SQL_SAFE_UPDATES = 1;    
-- 7. Lấy tất cả bài tập của môn 'Đại số' của sinh vien có mã sinh viên ST001
SELECT a.*
FROM Assignment a
JOIN Subject s ON a.subject_id = s.subject_id
JOIN Student st ON s.student_id = st.student_id
WHERE 
	s.name LIKE ('%đại số')
    AND st.student_id = 'ST001';
-- 8. Cập nhật trạng thái 'Complete' (Hoàn thành) cho bài tập "Bài luận hệ thống" của sinh viên có mã sinh viên ST001
UPDATE Assignment a
JOIN Subject s ON a.subject_id = s.subject_id
JOIN Student st ON s.student_id = st.student_id
SET a.status = 'Complete'
WHERE 
    a.name LIKE ('%bài luận hệ thống')
    AND st.student_id = 'ST001';
-- 9. Cập nhật deadline bài tập dự án ứng dụng của sinh viên có mã ST017
SET SQL_SAFE_UPDATES = 0;
UPDATE Assignment a
JOIN Subject s ON a.subject_id = s.subject_id
JOIN Student st ON s.student_id = st.student_id
SET 
    a.deadline = '2025-11-13 23:59:00' 
WHERE
    a.name LIKE ('%dự án ứng dụng')
    AND st.student_id = 'ST017';    
SET SQL_SAFE_UPDATES = 1;      
-- 10. Lấy bài tập chưa hoàn thành của sinh viên có id = ST001
SELECT a.*
FROM Assignment a
JOIN Subject s ON a.subject_id = s.subject_id
JOIN Student st ON s.student_id = st.student_id
WHERE 
    st.student_id = 'ST001'
    AND a.status = 'Pending';    
-- 11. Lấy bài tập chưa hoàn thành của môn Vật lý đại cương của sinh viên có mã ST001
SELECT a.*
FROM Assignment a
JOIN Subject s ON a.subject_id = s.subject_id
JOIN Student st ON s.student_id = st.student_id
WHERE
    st.student_id = 'ST001'
    AND s.name LIKE ('%vật lý đại cương')
    AND a.status = 'Pending';
-- 12. Lấy bài tập chưa hoàn thành trong ngày 2025-11-12 của sinh viên có mã ST018
SELECT a.assignment_id, a.name, a.deadline, a.status
FROM Assignment AS a
JOIN Subject AS s ON a.subject_id = s.subject_id
WHERE 
    DATE(a.deadline) = '2025-11-12'
    AND a.status = 'Pending'
    AND s.student_id = 'ST018';
-- 13. Liệt kê các bài đã hoàn thành của sinh viên có mã sinh viên ST001
SELECT a.*
FROM Assignment a
JOIN Subject s ON a.subject_id = s.subject_id
JOIN Student st ON s.student_id = st.student_id
WHERE
    st.student_id = 'ST001'
    AND a.status = 'Complete';
-- 14. Tìm sự kiện có chữ “Thi"
SELECT * FROM Event WHERE name LIKE '%Thi%';
-- 15. Tìm các sự kiện trong tháng 12
SELECT * FROM Event WHERE MONTH(time) = 12;
-- 16. Tìm các note tạo ra trong tháng 12
SELECT * FROM Note WHERE MONTH(creation_date) = 12;
-- 17. Liệt kê các note của môn học Giải thuật 2
SELECT n.note_id, n.title, n.content, n.creation_date
FROM Note n
JOIN Subject s ON n.subject_id = s.subject_id
WHERE s.name = 'Giải thuật 2'; 
-- 18. Thêm note vào ngày 2025-11-01 15:00:00
INSERT INTO Note (note_id, subject_id, title, content, creation_date)
VALUES ('NT101', 'SB001', 'Ghi chú mới', 'OSI Layer 7', '2025-11-01 15:00:00');
-- 19. Xóa các note tạo ra trong ngày 2025-11-23
DELETE FROM Note WHERE DATE(creation_date) = '2025-11-23';
-- 20. Lấy schedule có chữ “Kỳ 3"
SELECT * FROM Schedule WHERE name LIKE '%Kỳ 3%';
-- 21. Tìm các sinh viên có sự kiện “Thi” trong tháng 12
SELECT s.student_id, s.name, e.name AS event_name, e.time
FROM  Event e
JOIN Schedule sc ON e.schedule_id = sc.schedule_id
JOIN Student s ON sc.student_id = s.student_id
WHERE e.name LIKE '%Thi%' AND MONTH(e.time) = 12;