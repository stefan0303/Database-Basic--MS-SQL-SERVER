SELECT c.CountryCode,m.MountainRange,p.PeakName,p.Elevation FROM Countries as c
INNER JOIN MountainsCountries as mc
ON c.CountryCode=mc.CountryCode
INNER JOIN Mountains as m
ON m.Id=mc.MountainId 
INNER JOIN Peaks as p
ON m.Id=p.MountainId 
WHERE c.CountryCode='BG' AND p.Elevation>2835
ORDER BY p.Elevation DESC