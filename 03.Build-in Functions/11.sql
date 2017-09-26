
--SELECT *into Mix from (SELECT PeakName,RiverName from Peaks,Rivers
 --where SUBSTRING(PeakName,LEN(Peakname),1)=SUBSTRING(RiverName,1,1)) 
 --as mix;
-- Select*into newMix from (SELECT Mix[Peakname],Mix.RiverName) from Mix Union All
SELECT peakName,riverName,LOWER(CONCAT(peakName,SUBSTRING(rivername,2,LEN(riverName))))as mix FROM rivers AS r, peaks AS p
WHERE LOWER(RIGHT(p.peakname,1)) = LOWER(LEFT(r.rivername,1))  
ORDER BY mix