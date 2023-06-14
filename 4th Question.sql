SELECT wines.id as ID, wines.name AS Wine_Name,keywords.name as flavor, keywords_wine.group_name AS Group_flavor 
FROM keywords_wine
INNER JOIN keywords
ON keywords.id = keywords_wine.keyword_id
JOIN wines
ON wines.id = keywords_wine.wine_id
WHERE (keywords_wine.count > 10)
AND ( keywords.name IN ('coffee','toast','green apple','cream','citrus') )
AND (keywords_wine.keyword_type = 'primary')
GROUP by wines.id
HAVING  COUNT(wines.id) = 5 ;

