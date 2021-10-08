CREATE TABLE animal(
animal_id SERIAL PRIMARY KEY,
person_id INT NOT NULL REFERENCES person(person_id),
name VARCHAR(50),
age INT,
species VARCHAR(50),
food VARCHAR (50),
care INT NOT NULL REFERENCES care(care_id),
birth_date INT,
adoption_date INT
);

CREATE TABLE person(
    person_id SERIAL PRIMARY KEY,
    animal_id INT NOT NULL REFERENCES animal(animal_id),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(100),
    email VARCHAR(70),
    phone_number INT
);

CREATE TABLE species(
    species_id SERIAL PRIMARY KEY,
    animal_id INT NOT NULL REFERENCES animal(animal_id),
    gender VARCHAR(15),
    type VARCHAR(50),
    info VARCHAR(1000)
);

CREATE TABLE food(
    food_id SERIAL PRIMARY KEY,
    animal_id INT NOT NULL REFERENCES animal(animal_id),
    name VARCHAR(100),
    meals_per_day INT,
    amount_per_meal VARCHAR(1000)
);

CREATE TABLE care(
    care_id SERIAL PRIMARY KEY,
    animal_id INT NOT NULL REFERENCES animal(animal_id),
    medical_info VARCHAR(1000),
    is_spayed BOOLEAN,
    is_neutered BOOLEAN,
    general_care_overview VARCHAR(1000)
);