SELECT TOP 5 c.CountryName,r.RiverName FROM Countries as c
LEFT JOIN CountriesRivers as cr
ON c.CountryCode=cr.CountryCode
LEFT JOIN Rivers as r
ON r.Id=cr.RiverId
INNER JOIN Continents as co
ON co.ContinentCode=c.ContinentCode
WHERE co.ContinentName='Africa'
ORDER BY c.CountryName ASC