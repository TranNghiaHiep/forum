CREATE DATABASE Forum
GO

USE Forum 
GO

CREATE TABLE Account(
	id INT IDENTITY PRIMARY KEY,
	username VARCHAR(100) NOT NULL,
	password VARCHAR(100) NOT NULL,
	name NVARCHAR(250),
	city NVARCHAR(100),
	description NVARCHAR(500),
	permission_id INT,
	email VARCHAR(100),
	phone VARCHAR(11),
	website VARCHAR(200),
	status INT,
)
GO

CREATE TABLE Category(
	id INT IDENTITY PRIMARY KEY,
	name NVARCHAR(250) NOT NULL,
	description NVARCHAR(500),
	color VARCHAR(30)
)

CREATE TABLE Post(
	id INT IDENTITY PRIMARY KEY,
	user_id INT FOREIGN KEY
		REFERENCES dbo.Account(id),
	category_id INT FOREIGN KEY
		REFERENCES dbo.Category(id),
	title NVARCHAR(250) NOT NULL,
	content NVARCHAR(500),
	description VARCHAR(500)
)
GO

CREATE TABLE Comment(
	id INT IDENTITY PRIMARY KEY,
	post_id INT FOREIGN KEY
		REFERENCES dbo.Post(id),
	user_id INT FOREIGN KEY
		REFERENCES dbo.Account(id),
	title NVARCHAR(250) NOT NULL,
	content NVARCHAR(500),
	description VARCHAR(500)
)
GO

INSERT INTO dbo.Account 
        ( username ,
          password ,
          name ,
          city ,
          description ,
          permission_id ,
          email ,
          phone ,
          website ,
          status
        )
VALUES  ( 'admin' , -- username - varchar(50)
          '123456' , -- password - varchar(50)
          N'Admin' , -- name - nvarchar(100)
          N'' , -- city - nvarchar(100)
          N'' , -- description - nvarchar(250)
          0 , -- permission_id - int
          N'' , -- email - nvarchar(100)
          '' , -- phone - varchar(11)
          '' , -- website - varchar(200)
          0  -- status - int
        )