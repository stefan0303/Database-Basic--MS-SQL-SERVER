--SELECT TownID,Name from Towns 
--where SUBSTRING(Name,1,1)!='R' and SUBSTRING(Name,1,1)!='B'
-- and SUBSTRING(Name,1,1)!='D' order by Name
 SELECT TownID,Name from Towns 
where Name like '[MKBE]%' order by Name