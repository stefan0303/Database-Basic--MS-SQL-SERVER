SELECT depositGroup,  SUM(DepositAmount) as 'TotalSum' 
from WizzardDeposits where MagicWandCreator='Ollivander family'
 group by DepositGroup Having SUM(DepositAmount)<150000 order by TotalSum DESC