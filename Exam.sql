DROP DATABASE IF EXISTS FinalExam;
CREATE DATABASE IF NOT EXISTS FinalExam;
USE FinalExam;

CREATE TABLE `user`(
	id				int primary key not null,
    full_name		varchar(100) not null,
    email			varchar(100) not null,
    `password`		varchar(100) not null,
    exp_in_year		int,
    pro_skill		varchar(50),
    project_id		int not null,
    `role`			enum('Manager', 'Employee')
    
);

-- Chèn 5 người dùng với vai trò Manager
INSERT INTO `user` (id, full_name, email, `password`, exp_in_year, pro_skill, project_id, `role`)
VALUES 
    (1, 'Alice Smith', 'alice.smith@vti.com.vn', 'password123', 4, NULL, 101, 'Manager'),
    (2, 'Bob Johnson', 'bob.johnson@vti.com.vn', 'password456', 2, NULL, 102, 'Manager'),
    (3, 'Charlie Brown', 'charlie.brown@com.vn', 'password789', 6, NULL, 103, 'Manager'),
    (4, 'Diana Prince', 'diana.prince@vti.com.vn', 'password012', 3, NULL, 104, 'Manager'),
    (5, 'Eva Green', 'eva.green@vti.com.vn', 'password345', 5, NULL, 105, 'Manager');

-- Chèn 5 người dùng với vai trò Employee
INSERT INTO `user` (id, full_name, email, `password`, exp_in_year, pro_skill, project_id, `role`)
VALUES 
    (6, 'Frank White', 'frank.white@vti.com.vn', 'password678', NULL, 'dev', 102, 'Employee'),
    (7, 'Grace Black', 'grace.black@vti.com.vn', 'password901', NULL, 'test', 104, 'Employee'),
    (8, 'Hannah Lee', 'hannah.lee@vti.com.vn', 'password234', NULL, 'java', 101, 'Employee'),
    (9, 'Isaac Brown', 'isaac.brown@vti.com', 'password567', NULL, 'sql', 101, 'Employee'),
    (10, 'Julia White', 'julia.white@vti.com.vn', 'password890', NULL, 'python', 113, 'Employee');

