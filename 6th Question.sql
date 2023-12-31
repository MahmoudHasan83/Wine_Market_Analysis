SELECT countries.name AS Country, ROUND(AVG(wines.ratings_average),3) AS Average_Rating
FROM wines
INNER JOIN regions
ON wines.region_id = regions.id
INNER JOIN countries
ON regions.country_code = countries.code
GROUP BY countries.name
ORDER BY Average_Rating DESC;

SELECT countries.name AS Country, ROUND(AVG(vintages.ratings_average),3) AS Average_Rating
FROM vintages
INNER JOIN wines
ON vintages.wine_id = wines.id
INNER JOIN regions
ON wines.region_id = regions.id
INNER JOIN countries
ON regions.country_code = countries.code
GROUP BY countries.name
ORDER BY Average_Rating DESC;