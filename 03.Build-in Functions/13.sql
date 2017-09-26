SELECT userName,SUBSTRING(Email,CHARINDEX('@',Email)+1,50) 
as 'Email Provider' from Users order by 'Email Provider',Username