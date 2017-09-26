Create table Directors 
(
	Id int Not Null Identity(1,1)Primary Key,
	DirectorName nvarchar(100),
	Notes text	
)

Create table Genres
(
	Id int not null Identity(1,1)Primary Key,
	GenreName nvarchar(100),
	Notes text			
)
Create table Categories
(
	Id int Not NUll Identity(1,1)Primary Key,
	CategoryName nvarchar(100),
	Notes text	
)
Create table Movies
(
	Id int not null Identity(1,1)Primary key,
	Title nvarchar(100),
	DirectorId int,
	CopyrightYear date,
	Lenght float(2),
	Genreld nvarchar(100),
	Categoryid int,
	Rating float(2),
	Notes text
)

insert into Directors(DirectorName,Notes)
values ('Stefan','Big Boss');
insert into Directors(DirectorName,Notes)
values('Petko','Small Boss')
insert into Directors(DirectorName,Notes)
values('Boichev','The Hacker')	
insert into Directors(DirectorName,Notes)
values('Petkan','Chorbar greda')
insert into Directors(DirectorName,Notes)
values('Tapanarov','The loser')

insert into Genres(GenreName,Notes)
values('Comedy','fashfiasohfaisofhao saojfa')
insert into Genres(GenreName,Notes)
values('Crime','kasfhioashgioas gsakjaoi')
insert into Genres(GenreName,Notes)
values('Sport','fashfiasohfaisofhao saojfa')
insert into Genres(GenreName,Notes)
values('Action','fashfiasdasfsohfaisofhao saojfasf')
insert into Genres(GenreName,Notes)
values('Drama','fashfasgiasohfaisofafafhaogsa gdaagsaojfa')

insert into Categories(CategoryName,Notes)
values('English','fasjfajs fkashflk fasj')
insert into Categories(CategoryName,Notes)
values('French','asfhkis gaskihjogais glhas')
insert into Categories(CategoryName,Notes)
values('Bulgarien','fasoj jfsa')
insert into Categories(CategoryName,Notes)
values('Spanish','fsalj fahjs')
insert into Categories(CategoryName,Notes)
values('Deutch','mfka fkjas fja')

insert into Movies(Title,DirectorId,CopyrightYear,Lenght,Genreld,Categoryid,Rating,Notes)
values('Levski-Shampion',342,'2016-1-1',190.24,'Crime',12341,12.67,'fasn fksna')
insert into Movies(Title,DirectorId,CopyrightYear,Lenght,Genreld,Categoryid,Rating,Notes)
values('Levski-Shampion',342,'2016-1-1',190.24,'Crime',12341,12.67,'fasn fksna')
insert into Movies(Title,DirectorId,CopyrightYear,Lenght,Genreld,Categoryid,Rating,Notes)
values('Levski-Shampion',342,'2016-1-1',190.24,'Crime',12341,12.67,'fasn fksna')
insert into Movies(Title,DirectorId,CopyrightYear,Lenght,Genreld,Categoryid,Rating,Notes)
values('Levski-Shampion',342,'2016-1-1',190.24,'Crime',12341,12.67,'fasn fksna')
insert into Movies(Title,DirectorId,CopyrightYear,Lenght,Genreld,Categoryid,Rating,Notes)
values('Levski-Shampion',342,'2016-1-1',190.24,'Crime',12341,12.67,'fasn fksna')
