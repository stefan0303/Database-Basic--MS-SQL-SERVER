--SELECT top 50 name,FORMAT(Start, 'yyyy-MM-dd') from Games 
--where start>'2011-1-1' and Start<'2012-12-31' order by Start,Name
 
--OR

SELECT top 50 name,CONVERT(varchar(10), Start,120) from Games 
where start>'2011-1-1' and Start<'2012-12-31' order by Start,Name 