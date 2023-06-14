SELECT wines.name AS Wine_Name, keywords.name as flavor, keywords_wine.group_name AS Group_flavor 
FROM keywords_wine
INNER JOIN keywords
ON keywords.id = keywords_wine.keyword_id
JOIN wines
ON wines.id = keywords_wine.wine_id
WHERE (keywords_wine.count > 10)
AND (keywords.name IN ('coffee','toast','green apple','cream','citrus'));