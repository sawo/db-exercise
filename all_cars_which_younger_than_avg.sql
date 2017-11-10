SELECT *

FROM cars
 
LEFT JOIN cars_models
 
    ON cars.id = cars_models.make_id
WHERE cars_models.year > (SELECT AVG(year) FROM cars_models)
;