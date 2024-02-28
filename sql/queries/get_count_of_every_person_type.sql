USE bus_passenger_tracker;


-- Get count of drivers, conductors, and passengers in the database
SELECT person_type,
		COUNT(*) AS total_count
FROM person
GROUP BY person_type;