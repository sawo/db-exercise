
CREATE DATABASE cars;

use cars;

CREATE TABLE cars (

    id INTEGER AUTO_INCREMENT PRIMARY KEY,

    make VARCHAR(100)

    );

CREATE TABLE cars_models (

    make_id INTEGER NOT NULL,

    model VARCHAR(100),

    year INT(4),

    color VARCHAR(100),

    FOREIGN KEY (model_id) REFERENCES cars(id)

    );