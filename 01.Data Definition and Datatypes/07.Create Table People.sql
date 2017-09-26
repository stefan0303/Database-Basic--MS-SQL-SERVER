Create table People
(
	Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Name varchar(200) Not Null,
	Picture VARBINARY(5),
	Height float(2),
	Weight float(2),
	Gender nvarchar(1) not null,
	Birhday date not null,
	Biography text 

)


insert into People(Name,Picture,Height,Weight,Gender,Birhday,Biography)
values('Stefan',NUll,'1.19','83','m','03-03-1984','Poker player')
insert into People(Name,Picture,Height,Weight,Gender,Birhday,Biography)
values('Stefan',NUll,'1.99','80.23','m','03-03-1984','Poker player')
insert into People(Name,Picture,Height,Weight,Gender,Birhday,Biography)
values('Stefan',NUll,'1.99','80.12','m','03-03-1984','Poker player')
insert into People(Name,Picture,Height,Weight,Gender,Birhday,Biography)
values('Stefan',NUll,'1.29','80.23','m','03-03-1984','Poker player')
insert into People(Name,Picture,Height,Weight,Gender,Birhday,Biography)
values('Stefan',NUll,'1.39','80','m','03-03-1984','Poker player')