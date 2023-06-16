SELECT wines.id as ID, wines.name AS Wine_Name,keywords.name as flavor, keywords_wine.group_name AS Group_flavor 
FROM keywords_wine
INNER JOIN keywords
ON keywords.id = keywords_wine.keyword_id
JOIN wines
ON wines.id = keywords_wine.wine_id
WHERE (keywords_wine.count > 10)
AND ( keywords.name IN ('black cherry','cassis','cedar',
'baking spice','graphite','blackberry','plum',
'jam','blueberry','mint','violet','eucalyptus',
'anise','cinnamon','menthol','tobacco','dark chocolate',
'smoke','vanilla','clove','milk chocolate','mocha') )
AND (keywords_wine.keyword_type = 'primary')
AND (wines.acidity BETWEEN 2.3 and 3.9)
AND (wines.intensity BETWEEN 3.8 and 4.8) 
AND (wines.sweetness BETWEEN 1.4 and 2.4) 
AND (wines.tannin BETWEEN 2.8 and 4.0)
GROUP by wines.id
HAVING  COUNT(wines.id) = 22;



SELECT id as ID, name AS Wine_Name,acidity,intensity,sweetness,tannin
From wines
where (name = 'Cabernet Sauvignon')
GROUP BY ID;