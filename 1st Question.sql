SELECT name, ratings_average AS Rating, ratings_count AS Count, 
ROUND((price_euros * 1000.0/bottle_volume_ml)) AS Price_per_liter
FROM vintages
WHERE ratings_count > 500 AND Price_per_liter < 100
ORDER by Rating DESC, Price_per_liter, Rating DESC
limit 10;