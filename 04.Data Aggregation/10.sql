Select DISTINCT substring(FirstName,1,1)  as 'first letter' 
from WizzardDeposits where DepositGroup = 'Troll Chest' GROUP BY  FirstName