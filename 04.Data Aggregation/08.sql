SELECT DepositGroup, MagicWandCreator, MIN(DepositCharge)
 as 'MinDepositCharge' from WizzardDeposits 
 Group by DepositGroup, MagicWandCreator order by MagicWandCreator,DepositGroup