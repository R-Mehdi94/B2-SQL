use clubChv;

SELECT nomAdh,prenomAdh 
FROM Adherent 
WHERE parrain is NULL;

SELECT count(nomAdh)
FROM Adherent
WHERE parrain = 2;

SELECT count(parrain),parrain 
FROM Adherent 
GROUP BY parrain;
