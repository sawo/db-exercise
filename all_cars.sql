SELECT
 
   make,

    model,

    color,

    year

FROM cars

JOIN cars_models
 
    ON cars_models.make_id = cars.id
;