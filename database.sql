CREATE DATABASE Forum
GO

USE Forum 
GO

CREATE TABLE Account(
	id INT IDENTITY PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	name NVARCHAR(100),
	city NVARCHAR(100),
	description NVARCHAR(250),
	permission_id INT,
	email NVARCHAR(100),
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