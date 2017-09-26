SELECT TOP 5 c.CountryName, MAX(p.Elevation) as HighestPeakElevation,MAX(r.Length) as LongestRiverLength
 FROM Countries as c
-->PEAKS 
LEFT JOIN MountainsCountries as mc
ON c.CountryCode=mc.CountryCode
LEFT JOIN Mountains as m
ON m.Id=mc.MountainId
LEFT JOIN Peaks as p
ON m.Id=p.MountainId
-->RIVERS
LEFT JOIN CountriesRivers as cr
ON c.CountryCode=cr.CountryCode
LEFT JOIN Rivers as r
ON r.Id=cr.RiverId
GROUP BY c.CountryName
ORDER BY HighestPeakElevation DESC,LongestRiverLength DESC, c.CountryName 

