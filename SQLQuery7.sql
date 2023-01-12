--select * from Books
--select title, Description from books
--select * from Books where title = 'thor' or title = 'hulk'
--select distinct title from books;
--select * from books order by Title
--select * from books order by Title desc
--insert into books(title) values ('black widow')
--insert into books(Description) values ('issue 101')
--insert into books(Title, Description) values ('captian america', 'issue 96')
--SELECT * FROM Books WHERE Title is null
--UPDATE Books Set Title = 'x-men' where Description is null
--UPDATE Books set Title = 'Black Panther' where Description = 'issue 101'
--Select * from Books
--select count(ID) from Books
--select COUNT(Title) from Books where title = 'hulk'
--select sum(Id) from Books 
--select * from books where Title like 'h%'
--select  * from books where title like '[hrm]%'
--select * from books where title like '[^hrm]%'
--select * from books where title in ('hulk', 'thor', 'x-men')
--select * from books where title in (select title = 'hulk')
--select * from books where title not in (select title = 'hulk')
--select * from books where Id between 1 and 5
--select * from books where Description between 'By MCU' and 'Issue 201'
--select * from books where Title between 'Marvel' and 'PHP'
--select Title as comicBooks from Books
--select Id as number, Title as comicBook, Description as Issue from books 
--select Title from Books where exists (select title where Description = 'issue 201')
--BackUp DataBase BookStoreAPI to disk = 'C:\DB'
--use BookStoreAPI
--create table SuperHeros (SuperheroId int, SName varchar(255), Spower varchar(255), ComicTile varchar(255)) 
--Alter Table SuperHeros Alter Column SuperheroId int not null
--ALTER TABLE SuperHeros ADD PRIMARY KEY (SuperheroId);
--Alter Table SuperHeros DROP FK_SuperHero;
--ALTER TABLE SuperHeros alter COLUMN SuperheroId AUTO_INCREMENT;
--ALTER TABLE SuperHeros alter SuperheroId identity;
--Insert Into SuperHeros (SName, Spower, ComicTile) values ('Hawkeye', 'ArrowBaaz', 'Hawkeye issue 02')
--alter table superheros add id int
--alter table Superheros add foreign key (id) references books(Id) 
--alter table superheros alter column id int not null
--ALTER TABLE SuperHeros alter column Superherold IDENTITY(1,1)
--create view [Hulk Comics] as Select title, description from Books where title = 'hulk';
--SELECT * FROM [Hulk Comics]
--select * from SuperHeros
--insert into SuperHeros (SuperheroId, SName, Spower, ComicTile, id) values (2,'captian america','super solider', 'America origin',2)
--select * from SuperHeros
--ALTER TABLE SuperHeros DROP Superherold INT IDENTITY(1,1)
--Exec sp_rename 'Spower', 'Power', 'Columns
--alter table SuperHeros.SuperheroId alter drop constraint PK_SuperHeroId;
--alter table SuperHeros add SuperHeroId int not null Primary Key Identity
--insert into SuperHeros(SName, Spower, ComicTile, id) values ('Iron Man', 'Mind-Money', 'iron-man issue 101', 2)
--select * from SuperHeros

create procedure SuperHeroById
@id int
as
begin
Select * from SuperHeros where SuperheroId = @id
end


exec SuperHeroById 20;
alter procedure SuperHeroById
@id int,
@sName Varchar(2555)

as
begin
Select * from SuperHeros where SuperheroId = @id and SName = @sName
end

sp_helptext SuperHeroById



create procedure SuperHeroByName
@name varchar(255),
@SCount int output
as
begin
select @SCount = COUNT(SuperHeroId) from SuperHeros
Where SName = @name
end


declare @CountSupes int
Exec SuperHeroByName 'thor', @CountSupes output
select @CountSupes

