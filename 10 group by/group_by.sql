SELECT 
  product,
  SUM(aantal) AS totaal_aantal,
  SUM(verkoopprijs) AS totaal_verkoopbedrag
FROM verkochtproduct
GROUP BY product;


SELECT COUNT(*) AS totaal_huisdieren FROM huisdieren;


SELECT COUNT(*) AS totaal_verkooptransacties FROM verkochtproduct;


SELECT COUNT(DISTINCT product) AS aantal_unieke_producten FROM verkochtproduct;


SELECT 
  eigenaarid, 
  COUNT(*) AS aantalHuisdieren 
FROM huisdieren
GROUP BY eigenaarid;
