create database FootBallManager;

create table Schedule (
	ngay Date,
	name nvarchar(200),
	result nvarchar(200),
	enemy nvarchar(200),
	pitchID int,
)

create table Pitch (
	id int,
	chienthuat nvarchar(200),
)

create table PlayerInPitch(
	pitchID int,
	memberID int,
	Position nvarchar(256),
)

create table Account (
	account nvarchar(256),
	password nvarchar(256),
)

drop table Account
insert into Account values('admin', '123456') 
select * from Account