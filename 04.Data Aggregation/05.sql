SELECT DepositGroup, sum(DepositAmount) as 'TotalSum' from WizzardDeposits Group by DepositGroup