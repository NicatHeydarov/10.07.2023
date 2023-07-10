CREATE DATABASE RELATION
USE RELATION
CREATE TABLE ROLES
(
Id int primary key identity,
Name nvarchar(20) Not null,
)
CREATE TABLE Users
(
Id int primary key identity,
Username nvarchar(20) Not null,
Password nvarchar(20) Not null,
RoleId int Foreign Key REFERENCES Roles(Id)
)
Select U.username as Name,R.Name as Role From USERS AS U LEFT JOIN ROLES AS R ON U.ROLEID =R.ID


CREATE DATABASE MARKET 
USE MARKET
CREATE TABLE CATEGORIES
(
Id int primary key identity,
Name nvarchar(20),
SubId INT FOREIGN KEY REFERENCES CATEGORIES (ID)
)
SELECT C.Name as Category,Child.Name As SubCategory FROM CATEGORIES AS C LEFT JOIN CATEGORIES AS Child ON C.SubId=Child.Id