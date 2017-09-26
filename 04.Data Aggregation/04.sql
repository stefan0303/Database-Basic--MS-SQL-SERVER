SELECT avgTbl.DepositGroup
FROM
(
SELECT av.DepositGroup, AVG(av.MagicWandSize) AS AvgMGWS FROM [dbo].[WizzardDeposits] AS av
        GROUP BY av.DepositGroup) avgTbl
JOIN
(
   SELECT MIN(AvgSize.AvgMGWS) AS mmm
FROM 
        (
           SELECT av.DepositGroup, AVG(av.MagicWandSize) AS AvgMGWS
                     FROM [dbo].[WizzardDeposits] AS av
                         GROUP BY av.DepositGroup
        )
                 AS AvgSize
) AS minTbl
ON avgTbl.AvgMGWS=minTbl.mmm