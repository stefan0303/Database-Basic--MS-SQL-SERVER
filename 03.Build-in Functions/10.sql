--SELECT countryName,IsoCode
 --from Countries where  CountryName like '%a%a%a%' order by IsoCode
 SELECT countryName,IsoCode
 from Countries where LEN(CountryName)-LEN(REPLACE(CountryName, 'a',''))>=3
 order by IsoCode
