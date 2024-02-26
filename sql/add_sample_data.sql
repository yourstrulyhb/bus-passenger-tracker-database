USE bus_passenger_tracker;

SELECT * FROM vaccine;
-- Adding sample data to `vaccine` table (ADDED)
-- INSERT INTO vaccine(vaccine_name, manufacturer)
-- VALUES ('Drug_A', 'Manufacturer_A'),
-- 			('Drug_B', 'Manufacturer_B'),
--         	('Drug_C', 'Manufacturer_C');


SELECT * FROM bus;
-- Adding sample data to `bus` table (ADDED)
-- INSERT INTO bus(plate_number, capacity)
-- VALUES ('SKK-1423', 45),
-- 			('NYC-5674', 45),
--         	('PHL-2378', 35);


SELECT * FROM person;
-- Adding sample data to `person` table (ADDED)
-- INSERT INTO person(first_name, middle_name, last_name, date_of_birth, is_vaccinated, vaccine_id, total_doses, recent_dose_date, person_type)
-- VALUES ('Juan', 'Montano', 'dela Cruz', '2000-01-01', 1, 2, '2022-01-02', 'passenger'),
-- 	('John', 'Bato', 'Natividad', '1995-01-01', 1, 1, 1, '2022-01-03', 'driver'),
-- 		('Mary', 'Santiago', 'Rizal', '1995-01-01', 1, 2, 2, '2022-01-03', 'passenger'),
--  		('Annie', 'Batumbakal', 'Garcia', '2015-04-01', 0, NULL, NULL, NULL, 'conductor');


SELECT * FROM home_address;
-- Adding sample data to `home_address` table
-- INSERT INTO home_address(person_id, specific_address, municipality, province)
-- VALUES (1, 'Block 2, Tiza', 'Panay', 'Capiz'),
-- 		(2, 'Block 1, Mat-y', 'Miagao', 'Iloilo'),
--         (3, 'Pomelo St., Brgy. Angkan, Mandurriao', 'Iloilo City', 'Iloilo'),
--         (3, 'Sitio Narra, Brgy. Adremesin', 'Tapaz', 'Capiz'),
--         (4, 'Mabini St., Rizal Subdivision', 'Roxas City', 'Capiz');

 
SELECT * FROM contact_number;
-- Adding sample data to `contact_number` table
-- INSERT INTO contact_number(person_id, c_number)
-- VALUES (1, '09119876543'),
-- 		(1, '09129876543'),
--         (2, '09131234567'),
--         (3, '09141234567'),
-- 		(4, '09131234567');


SELECT * FROM station;
-- INSERT INTO station(station_name, station_spec_add, station_municipality, station_province) 
-- VALUES ('Pueblo Terminal', 'Pueblo', 'Roxas City', 'Capiz'),
-- 		('Tagbak Terminal', 'Dito St., Tagbak', 'Iloilo City', 'Iloilo');


SELECT * FROM trip;
-- INSERT INTO trip(bus_id, driver_id, conductor_id, o_station_id, d_station_id, departure_time, arrival_time)
-- VALUES (1, 2, 4, 1, 2, '2020-06-15 08:15:00', '2020-06-15 11:15:00');


SELECT * FROM passenger_pays_trip;
-- INSERT INTO passenger_pays_trip(psngr_id, trip_id, fare_amount, psngr_o_spec, psngr_o_municipality, psngr_o_province, psngr_d_spec, psngr_d_municipality, psngr_d_province)
-- 							VALUES  (1, 1, 60, 'Numancia St.', 'Roxas City', 'Capiz', 'Bakhaw St.', 'Iloilo City', 'Iloilo'),
-- 									(1, 1, 35, 'Aguinaldo Avenue', 'Roxas City', 'Capiz', 'City Mall Arevalo', 'Iloilo City', 'Iloilo');