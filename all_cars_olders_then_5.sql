SELECT *

FROM cars

JOIN cars_models
 
    ON cars_models.make_id = cars.id

WHERE year < (YEAR(CURRENT_TIMESTAMP)-5)
;