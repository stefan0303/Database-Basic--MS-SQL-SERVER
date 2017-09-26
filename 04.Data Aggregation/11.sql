SELECT DISTINCT depositGroup,IsDepositExpired,AVG(DepositInterest) as 'AverageInterest'
 from WizzardDeposits Where DepositStartDate>'1985-01-01'
 Group by DepositGroup,IsDepositExpired order by DepositGroup DESC,IsDepositExpired ASC