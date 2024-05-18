-- Tạo cơ sở dữ liệu
CREATE DATABASE FFCFPTerForumComunity;
GO

-- Sử dụng cơ sở dữ liệu
USE FFCFPTerForumComunity;
GO

-- Tạo bảng Users: lưu thông tin người dùng
CREATE TABLE Users (
    User_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho người dùng
    User_email NVARCHAR(255) NOT NULL, -- Email người dùng, bắt buộc
    User_password NVARCHAR(255) NOT NULL, -- Mật khẩu người dùng, bắt buộc
    User_role INT CHECK(User_role IN (0,1,2,3,4)) NOT NULL, -- Vai trò của người dùng, bắt buộc,0-Ban, 1-User , 2-Manager , 3-Host group , 4-Admin ,
    Username NVARCHAR(100) NOT NULL, -- Tên người dùng, bắt buộc
    User_fullName NVARCHAR(255), -- Họ và tên đầy đủ của người dùng
    User_wallet DECIMAL(10, 2) DEFAULT 0.00, -- Số dư trong ví của người dùng, mặc định là 0.00
    User_avatar NVARCHAR(255), -- Ảnh đại diện của người dùng
    User_story TEXT, -- Câu chuyện của người dùng
    User_rank INT DEFAULT 0, -- Hạng của người dùng, mặc định là 0
    User_score INT DEFAULT 0, -- Điểm của người dùng, mặc định là 0
    User_createDate DATETIME DEFAULT GETDATE(), -- Ngày tạo người dùng, mặc định là ngày hiện tại
    User_sex NVARCHAR(10), -- Giới tính của người dùng
    User_activeStatus BIT DEFAULT 0, -- Trạng thái hoạt động của người dùng, mặc định là 0-off,1-on
    CONSTRAINT chk_email CHECK (User_email LIKE '%@fpt.edu.vn' OR User_email LIKE '%@fe.edu.vn'), -- Kiểm tra định dạng email
	CONSTRAINT unique_email UNIQUE (User_email),
    CONSTRAINT chk_sex CHECK (User_sex IN ('Male', 'Female', 'Other')), -- Kiểm tra giới tính có hợp lệ không
	CONSTRAINT unique_name UNIQUE (Username),
);
GO

-- Tạo bảng FriendShip: lưu thông tin về mối quan hệ bạn bè
CREATE TABLE FriendShip (
    Friendship_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho mối quan hệ bạn bè
    User_id INT NOT NULL, -- id của người dùng, không được null
    Friend_id INT NOT NULL, -- id của bạn bè, không được null
    Request_status NVARCHAR(50) NOT NULL, -- Trạng thái yêu cầu, không được null
    FOREIGN KEY (User_id) REFERENCES Users(User_id), -- Khóa ngoại tham chiếu đến người dùng
    FOREIGN KEY (Friend_id) REFERENCES Users(User_id), -- Khóa ngoại tham chiếu đến bạn bè
    UNIQUE (User_id, Friend_id) -- Đảm bảo mỗi cặp người dùng chỉ có một mối quan hệ bạn bè duy nhất
);
GO

-- Tạo bảng User_report: lưu thông tin về báo cáo người dùng
CREATE TABLE User_report (
    ReportUser_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho báo cáo người dùng
    User_id INT NOT NULL, -- id của người dùng báo cáo, không được null
	Reported_id INT NOT NULL,  -- id của người dùng bị báo cáo, không được null
    Status NVARCHAR(50) NOT NULL, -- Trạng thái báo cáo, không được null
    Reason TEXT, -- Lý do báo cáo
    FOREIGN KEY (User_id) REFERENCES Users(User_id), -- Khóa ngoại tham chiếu đến người dùng
    FOREIGN KEY (Reported_id) REFERENCES Users(User_id) -- Khóa ngoại tham chiếu đến người dùng
);
GO

-- Tạo bảng Notification: lưu thông tin về thông báo
CREATE TABLE Notification (
    Notification_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho thông báo
    User_id INT NOT NULL, -- id của người dùng, không được null
    Message TEXT NOT NULL,
	date DATETIME DEFAULT GETDATE(), -- Ngày tạo thông báo, mặc định là ngày hiện tại
    Status NVARCHAR(50), -- Trạng thái của thông báo
    FOREIGN KEY (User_id) REFERENCES Users(User_id) -- Khóa ngoại tham chiếu đến người dùng
);
GO

-- Tạo bảng Event: lưu thông tin về sự kiện
CREATE TABLE Event (
    Event_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho sự kiện
    Title NVARCHAR(255) NOT NULL, -- Tiêu đề của sự kiện, không được null
    Description TEXT, -- Mô tả sự kiện
    StartDate DATETIME NOT NULL, -- Ngày bắt đầu sự kiện, không được null
    EndDate DATETIME NOT NULL, -- Ngày kết thúc sự kiện, không được null
    User_id INT NOT NULL, -- id của người tạo sự kiện, không được null
    FOREIGN KEY (User_id) REFERENCES Users(User_id) -- Khóa ngoại tham chiếu đến người dùng
);
GO

-- Tạo bảng Payment: lưu thông tin về thanh toán
CREATE TABLE Payment (
    Payment_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho thanh toán
    Payment_detail TEXT NOT NULL, -- Chi tiết thanh toán, không được null
    User_id INT NOT NULL, -- id của người dùng, không được null
    FOREIGN KEY (User_id) REFERENCES Users(User_id) -- Khóa ngoại tham chiếu đến người dùng
);
GO

-- Tạo bảng Combo_ads: lưu thông tin về gói quảng cáo
CREATE TABLE Combo_ads (
    Adsdetail_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho gói quảng cáo
    Content TEXT NOT NULL, -- Nội dung gói quảng cáo, không được null
    budget DECIMAL(10, 2) NOT NULL -- Ngân sách của gói quảng cáo, không được null
);
GO

-- Tạo bảng Ads: lưu thông tin về quảng cáo
CREATE TABLE Ads (
    Ads_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho quảng cáo
    Adsdetail_id INT NOT NULL, -- id chi tiết gói quảng cáo, không được null
    Content TEXT NOT NULL, -- Nội dung quảng cáo, không được null
    Image NVARCHAR(255), -- Hình ảnh quảng cáo
    User_id INT NOT NULL, -- id của người đăng quảng cáo, không được null
    FOREIGN KEY (Adsdetail_id) REFERENCES Combo_ads(Adsdetail_id), -- Khóa ngoại tham chiếu đến chi tiết gói quảng cáo
    FOREIGN KEY (User_id) REFERENCES Users(User_id) -- Khóa ngoại tham chiếu đến người dùng
);
GO

-- Tạo bảng Message: lưu thông tin về tin nhắn
CREATE TABLE Message (
    Message_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho tin nhắn
    From_id INT NOT NULL, -- id người gửi, không được null
    To_id INT NOT NULL, -- id người nhận, không được null
    MessageText TEXT NOT NULL, -- Nội dung tin nhắn, không được null
    TimeStamp DATETIME DEFAULT GETDATE(), -- Thời gian gửi tin nhắn, mặc định là ngày hiện tại
    FOREIGN KEY (From_id) REFERENCES Users(User_id), -- Khóa ngoại tham chiếu đến người gửi
    FOREIGN KEY (To_id) REFERENCES Users(User_id) -- Khóa ngoại tham chiếu đến người nhận
);
GO

-- Tạo bảng Feeback: lưu thông tin về phản hồi
CREATE TABLE Feedback (
    Feedback_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho phản hồi
    Feedback_detail TEXT NOT NULL, -- Chi tiết phản hồi
    Feedback_title NVARCHAR(255) NOT NULL, -- Tiêu đề phản hồi, không được null
    User_id INT NOT NULL, -- id người gửi, không được null
    FOREIGN KEY (User_id) REFERENCES Users(User_id) -- Khóa ngoại tham chiếu đến người gửi
);
GO

-- Tạo bảng Topic: lưu thông tin về chủ đề
CREATE TABLE Topic (
    Topic_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho chủ đề
    Topic_name NVARCHAR(255) NOT NULL, -- Tên chủ đề, không được null
    Description TEXT -- Mô tả chủ đề
);
GO

-- Tạo bảng UserTopic: lưu thông tin về chủ đề của người dùng
CREATE TABLE UserTopic (
    UserTopic_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho chủ đề của người dùng
    User_id INT NOT NULL, -- id của người dùng, không được null
    Topic_id INT NOT NULL, -- id của chủ đề, không được null
    FOREIGN KEY (User_id) REFERENCES Users(User_id), -- Khóa ngoại tham chiếu đến người dùng
    FOREIGN KEY (Topic_id) REFERENCES Topic(Topic_id) -- Khóa ngoại tham chiếu đến chủ đề
);
GO

-- Tạo bảng Group: lưu thông tin về nhóm
CREATE TABLE [Group] (
    Group_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho nhóm
    Creater_id INT NOT NULL, -- id của người tạo nhóm, không được null
    Group_name NVARCHAR(255) NOT NULL, -- Tên nhóm, không được null
    Group_description TEXT, -- Mô tả nhóm
    FOREIGN KEY (Creater_id) REFERENCES Users(User_id) -- Khóa ngoại tham chiếu đến người tạo nhóm
);
GO

-- Tạo bảng MemberGroup: lưu thông tin về thành viên của nhóm
CREATE TABLE MemberGroup (
    MemberGroup_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho thành viên nhóm
    User_id INT NOT NULL, -- id của người dùng, không được null
    Group_id INT NOT NULL, -- id của nhóm, không được null
    Status NVARCHAR(50) NOT NULL, -- Trạng thái của thành viên trong nhóm, không được null
    FOREIGN KEY (User_id) REFERENCES Users(User_id), -- Khóa ngoại tham chiếu đến người dùng
    FOREIGN KEY (Group_id) REFERENCES [Group](Group_id) -- Khóa ngoại tham chiếu đến nhóm
);
GO

-- Tạo bảng Post: lưu thông tin về bài viết
CREATE TABLE Post (
    Post_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho bài viết
    User_id INT NOT NULL, -- id của người đăng bài viết
    Group_id INT, -- id của nhóm mà bài viết thuộc về
    Topic_id INT, -- id của chủ đề mà bài viết thuộc về
    Content TEXT NOT NULL, -- Nội dung bài viết
    createDate DATETIME DEFAULT GETDATE(), -- Ngày tạo bài viết, mặc định là ngày hiện tại
    Image NVARCHAR(255), -- Hình ảnh đính kèm bài viết
    Status NVARCHAR(50), -- Trạng thái của bài viết
    postStatus NVARCHAR(50), -- Trạng thái bài viết (duyệt, chưa duyệt)
    Reason TEXT, -- Lý do (nếu có) của trạng thái bài viết
    FOREIGN KEY (User_id) REFERENCES Users(User_id), -- Khóa ngoại tham chiếu đến người đăng bài viết
    FOREIGN KEY (Group_id) REFERENCES [Group](Group_id), -- Khóa ngoại tham chiếu đến nhóm
    FOREIGN KEY (Topic_id) REFERENCES Topic(Topic_id) -- Khóa ngoại tham chiếu đến chủ đề
);
GO
-- Tạo bảng Comment: lưu thông tin về bình luận của bài viết
CREATE TABLE Comment (
    Comment_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho bình luận
    Post_id INT, -- id của bài viết mà bình luận thuộc về
    User_id INT, -- id của người bình luận
    Content TEXT, -- Nội dung bình luận
    Image NVARCHAR(255), -- Hình ảnh đính kèm bình luận
    Date DATETIME DEFAULT GETDATE(), -- Thời gian bình luận, mặc định là ngày hiện tại
    FOREIGN KEY (Post_id) REFERENCES Post(Post_id), -- Khóa ngoại tham chiếu đến bài viết
    FOREIGN KEY (User_id) REFERENCES Users(User_id) -- Khóa ngoại tham chiếu đến người bình luận
);
GO

-- Tạo bảng Rate: lưu thông tin về đánh giá của bài viết
CREATE TABLE Rate (
    Rate_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho đánh giá
    Post_id INT, -- id của bài viết được đánh giá
    User_id INT, -- id của người đánh giá
    TypeRate INT, -- Loại đánh giá
    FOREIGN KEY (Post_id) REFERENCES Post(Post_id), -- Khóa ngoại tham chiếu đến bài viết
    FOREIGN KEY (User_id) REFERENCES Users(User_id) -- Khóa ngoại tham chiếu đến người đánh giá
);
GO

-- Tạo bảng PostReport: lưu thông tin về báo cáo của bài viết
CREATE TABLE PostReport (
    Report_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho báo cáo
    Reporter_id INT, -- id của người báo cáo
    Post_id INT, -- id của bài viết bị báo cáo
    Reason TEXT, -- Lý do báo cáo
    Status NVARCHAR(50), -- Trạng thái của báo cáo
    FOREIGN KEY (Reporter_id) REFERENCES Users(User_id), -- Khóa ngoại tham chiếu đến người báo cáo
    FOREIGN KEY (Post_id) REFERENCES Post(Post_id) -- Khóa ngoại tham chiếu đến bài viết bị báo cáo
);
GO
CREATE TABLE UserFollow (
    UserFollow_id INT IDENTITY(1,1) PRIMARY KEY, -- id tự động tăng cho bảng UserFollow
    User_id INT NOT NULL, -- id của người dùng theo dõi, không được null
    Event_id INT, -- id của sự kiện được theo dõi
    Topic_id INT, -- id của chủ đề được theo dõi
    FOREIGN KEY (User_id) REFERENCES Users(User_id), -- Tham chiếu khóa ngoại tới bảng Users
    FOREIGN KEY (Event_id) REFERENCES Event(Event_id), -- Tham chiếu khóa ngoại tới bảng Event
    FOREIGN KEY (Topic_id) REFERENCES Topic(Topic_id) -- Tham chiếu khóa ngoại tới bảng Topic
);
go
INSERT INTO Users (User_email, User_password, User_role, Username, User_fullName, User_sex, User_activeStatus)
VALUES 
    ('user1@fpt.edu.vn', 'password123', 0, 'bannedUser', 'Banned User', 'Male', 0),
    ('user2@fpt.edu.vn', 'password123', 1, 'regularUser', 'Regular User', 'Female', 1),
    ('user3@fpt.edu.vn', 'password123', 2, 'managerUser', 'Manager User', 'Other', 1),
    ('user4@fpt.edu.vn', 'password123', 3, 'hostUser', 'Host User', 'Male', 1),
    ('user5@fpt.edu.vn', 'password123', 4, 'adminUser', 'Admin User', 'Female', 1),
    ('user6@fpt.edu.vn', 'password123', 1, 'secondUser', 'Second User', 'Male', 1);
go
-- Xem thông tin từ bảng Users
SELECT * FROM Users;
-- Xem thông tin từ bảng FriendShip
SELECT * FROM FriendShip;
-- Xem thông tin từ bảng User_report
SELECT * FROM User_report;
-- Xem thông tin từ bảng Notification
SELECT * FROM Notification;
-- Xem thông tin từ bảng Event
SELECT * FROM Event;
-- Xem thông tin từ bảng Payment
SELECT * FROM Payment;
-- Xem thông tin từ bảng Combo_ads
SELECT * FROM Combo_ads;
-- Xem thông tin từ bảng Ads
SELECT * FROM Ads;
-- Xem thông tin từ bảng Message
SELECT * FROM Message;
-- Xem thông tin từ bảng Feeback
SELECT * FROM Feedback;
-- Xem thông tin từ bảng Topic
SELECT * FROM Topic;
-- Xem thông tin từ bảng UserTopic
SELECT * FROM UserTopic;
-- Xem thông tin từ bảng [Group]
SELECT * FROM [Group];
-- Xem thông tin từ bảng MemberGroup
SELECT * FROM MemberGroup;
-- Xem thông tin từ bảng Post
SELECT * FROM Post;
-- Xem thông tin từ bảng Comment
SELECT * FROM Comment;
-- Xem thông tin từ bảng Rate
SELECT * FROM Rate;
-- Xem thông tin từ bảng PostReport
SELECT * FROM PostReport;

