SELECT grapes.name as Grape_name, SUM(most_used_grapes_per_country.wines_count) as Number_of_bottles
FROM most_used_grapes_per_country
INNER JOIN grapes
ON grapes.id = most_used_grapes_per_country.grape_id
GROUP by most_used_grapes_per_country.wines_count
ORDER by Number_of_bottles DESC
limit 3;