/*
Create MySQL database for Bus Passenger Tracker 
by Hannah Bella C. Arceño
*/

-- CREATE DATABASE bus_passenger_tracker;
-- USE bus_passenger_tracker;

/* Create tables */
-- CREATE TABLE vaccine (
-- 	id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(255) NOT NULL,
--     manufacturer VARCHAR(255) NOT NULL,
--     CONSTRAINT vaccine_pk_id PRIMARY KEY (id)
-- );


-- CREATE TABLE person (
-- 	id INT NOT NULL AUTO_INCREMENT,
--     first_name VARCHAR(255) NOT NULL,
--     middle_name VARCHAR(255),
--     last_name VARCHAR(255) NOT NULL,
--     date_of_birth DATE NOT NULL,
--     is_vaccinated BOOLEAN NOT NULL,
--     vaccine_id INT,
--     total_doses TINYINT,
--     recent_dose_date DATE,
--     role VARCHAR(255) NOT NULL,
--     CONSTRAINT person_pk_id PRIMARY KEY (id),
--     CONSTRAINT person_fk_vaccine_id FOREIGN KEY (vaccine_id) REFERENCES vaccine(id)
-- );


-- CREATE TABLE contact_number (
-- 	id INT NOT NULL AUTO_INCREMENT,
--     person_id INT NOT NULL,
--     c_number VARCHAR(20),
--     CONSTRAINT cn_pk_id PRIMARY KEY(id),
--     CONSTRAINT cn_fk_person_id FOREIGN KEY (person_id) REFERENCES person(id)
-- );

-- CREATE TABLE home_address (
-- 	id INT NOT NULL AUTO_INCREMENT,
--     person_id INT NOT NULL,
--     specific_address VARCHAR(255),
--     municipality VARCHAR(255),
--     province VARCHAR(255),
--     CONSTRAINT ha_pk_id PRIMARY KEY (id),
--     CONSTRAINT ha_fk_person_id FOREIGN KEY (person_id) REFERENCES person(id)
-- );


-- CREATE TABLE bus (
-- 	id INT NOT NULL AUTO_INCREMENT,
--     plate_number VARCHAR(30),
--     capacity INT NOT NULL,
--     CONSTRAINT bus_pk_id PRIMARY KEY (id)
-- );


CREATE TABLE trip (
	id INT NOT NULL AUTO_INCREMENT,
    bus_id INT NOT NULL,
	driver_id INT NOT NULL,
    conductor_id INT NOT NULL,
    trip_origin VARCHAR(255) NOT NULL,
    trip_destination VARCHAR(255) NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    CONSTRAINT trip_pk_id PRIMARY KEY (id),
    CONSTRAINT trip_fk_bus_id FOREIGN KEY (bus_id) REFERENCES bus(id),
    CONSTRAINT trip_fk_driver_id FOREIGN KEY (driver_id) REFERENCES person(id),
	CONSTRAINT trip_fk_conductor_id FOREIGN KEY (conductor_id) REFERENCES person(id)
);


CREATE TABLE passenger_pays_trip (
	id INT NOT NULL AUTO_INCREMENT,
	psngr_id INT NOT NULL,
    trip_id INT NOT NULL,
    fare_amount INT NOT NULL,
    psngr_origin_spec VARCHAR(255),
    psngr_origin_city VARCHAR(255) NOT NULL,
	psngr_origin_province VARCHAR(255) NOT NULL,
	psngr_dest_spec VARCHAR(255),
    psngr_dest_city VARCHAR(255) NOT NULL,
	psngr_dest_province VARCHAR(255) NOT NULL,
    CONSTRAINT ppt_pk_id PRIMARY KEY (id),
    CONSTRAINT ppt_fk_psngr_id FOREIGN KEY (psngr_id) REFERENCES person(id),
    CONSTRAINT ppt_fk_trip_id FOREIGN KEY (trip_id) REFERENCES trip(id)
);

SHOW TABLES;