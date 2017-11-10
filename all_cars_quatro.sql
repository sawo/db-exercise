SELECT *

FROM cars

JOIN cars_models
 
    ON cars_models.make_id = cars.id

WHERE model LIKE '%Quatro%'
;