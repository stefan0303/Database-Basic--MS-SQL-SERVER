SELECT COUNT(c.CountryCode)-COUNT(mc.CountryCode) FROM Countries as c
LEFT JOIN MountainsCountries as mc
ON c.CountryCode=mc.CountryCode
