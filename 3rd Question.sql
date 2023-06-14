SELECT wineries.name as Name, ROUND(AVG(ratings_average),2) AS Average_Rating,SUM(ratings_count) AS Rating_SUM
FROM wines
INNER JOIN wineries
ON wineries.id = wines.winery_id
GROUP by wineries.name
HAVING Rating_SUM > 500
ORDER by Average_Rating DESC;