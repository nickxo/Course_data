DROP TABLE IF EXISTS district;
DROP TABLE IF EXISTS population;


CREATE TABLE district (
    id_district serial PRIMARY KEY,
    name_district varchar(50) NOT NULL,
    city_mayor varchar(50) NOT NULL,
    population int NOT NULL,
    created_on timestamp NOT NULL,
    last_login timestamp NULL,
    CONSTRAINT district_name_district_key UNIQUE (name_district),
    CONSTRAINT district_population_key UNIQUE (population)
);

CREATE TABLE population (
    population_id serial PRIMARY KEY,
    id_district int NOT NULL,
    first_name varchar(25) NOT NULL,
    last_name varchar(25) NOT NULL,
    age int NOT NULL,
    genre varchar(15) NOT NULL,
    email varchar(100) NOT NULL,
    phone_number int NOT NULL,
    address varchar(255) NOT NULL,
    studies varchar(255) NOT NULL,
    nationality varchar(15) NOT NULL,
    employed varchar(3) NOT NULL,
    created_on timestamp NOT NULL,
    last_login timestamp NULL,
    CONSTRAINT population_email_key UNIQUE (email),
    CONSTRAINT population_district_id_fkey FOREIGN KEY (id_district)
        REFERENCES district (id_district)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);




INSERT INTO district (name_district, city_mayor, population, created_on)
VALUES ('Chisinau', 'Ion Ceban', 532513, NOW()),
       ('Ialoveni', 'Sergiu Armasu', 12515, NOW());


INSERT INTO population (id_district, first_name, last_name, age, genre, email, phone_number, address, studies, nationality, employed, created_on)
VALUES (1, 'Vasile', 'Bivol', 23, 'Male', 'bivol.vasile@ati.utm.md', 1234567890, 'Florilor 1/4', 'Calculatoare si retele', 'Moldavian', 'No', NOW()),
       (2, 'Kate', 'Mungiu', 21, 'Female', 'kate.mungiu@mail.com', 0987654321, 'Decebal 2/2', 'Marketing', 'Romanian', 'Yes', NOW());

      

