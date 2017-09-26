SELECT e.depositGroup, MAX(e.MagicWandSize) as 'LongestMagicWand'
 from WizzardDeposits as e GROUP BY e.depositGroup