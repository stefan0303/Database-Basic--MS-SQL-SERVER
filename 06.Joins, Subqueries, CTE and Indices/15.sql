SELECT  usages.ContinentCode, usages.CurrencyCode,usages.Usage FROM
(
SELECT ContinentCode,CurrencyCode,COUNT(*) as Usage FROM Countries AS c
GROUP BY ContinentCode,CurrencyCode
HAVING COUNT(*)>1-->mahame edinichnite izpolzvania
) AS usages
INNER JOIN
(
	SELECT usages.ContinentCode,MAX(usages.Usage) AS MaxUsages  FROM
	(
	SELECT ContinentCode,CurrencyCode,COUNT(*) as Usage FROM Countries AS c
	GROUP BY ContinentCode,CurrencyCode
	) AS usages
	GROUP BY usages.ContinentCode
) AS maxUsages ON usages.ContinentCode =maxUsages.ContinentCode AND maxUsages.MaxUsages=usages.Usage