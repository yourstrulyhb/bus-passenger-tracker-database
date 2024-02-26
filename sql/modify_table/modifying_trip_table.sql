-- DO NOT RUN THIS AGAIN.
-- Normalized `trip` table and added `station` table for efficient data analysis.

-- Rename columns
-- ALTER TABLE trip
-- RENAME COLUMN trip_origin TO o_station_id,
-- RENAME COLUMN trip_destination TO d_station_id; 


-- Change datatype of columns
-- ALTER TABLE trip
-- MODIFY COLUMN o_station_id INT,
-- MODIFY COLUMN d_station_id INT;


-- CREATE TABLE station (
-- 	id INT NOT NULL AUTO_INCREMENT,
--     station_name VARCHAR(255) NOT NULL,
--     station_spec_add VARCHAR(255),
--     station_municipality VARCHAR(255) NOT NULL,
--     station_province VARCHAR(255) NOT NULL,
--     CONSTRAINT station_pk_id PRIMARY KEY (id)
-- );


-- Add constraints to existing table
-- ALTER TABLE trip
-- ADD CONSTRAINT trip_fk_o_station_id FOREIGN KEY (o_station_id) REFERENCES station(id),
-- ADD CONSTRAINT trip_fk_d_station_id FOREIGN KEY (d_station_id) REFERENCES station(id);
