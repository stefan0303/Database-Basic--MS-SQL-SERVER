SELECT depositGroup,  SUM(DepositAmount) 
as 'TotalSum' from WizzardDeposits
 where MagicWandCreator='Ollivander family' 
group by DepositGroup