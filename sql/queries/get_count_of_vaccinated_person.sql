USE bus_passenger_tracker;

SHOW TABLES;
SHOW COLUMNS FROM person;


-- Count people who are vaccinated against unvaccinated people
SELECT (CASE WHEN is_vaccinated = TRUE THEN 'vaccinated'
			ELSE 'unvaccinated' END) AS status,
		COUNT(*) AS count
FROM person
GROUP BY is_vaccinated;


-- Sample CASE
-- SELECT id,
-- 		first_name,
--         person_type,
--         is_vaccinated AS vaccination_status,
-- 		(CASE 	WHEN person_type = 'driver' AND is_vaccinated = TRUE THEN "I'm a bulletproof driver!"
-- 				WHEN person_type = 'driver' AND is_vaccinated = FALSE THEN "I need a vaccine!"
--                 WHEN person_type = 'conductor' AND is_vaccinated = TRUE THEN "You can rely on me!"
-- 				WHEN person_type = 'conductor' AND is_vaccinated = FALSE THEN "Vaccine please!"
--                 WHEN person_type = 'passenger' AND is_vaccinated = TRUE THEN "I'm bulletproof!"
-- 				ELSE "Noooo" END) AS expression
-- FROM person
-- ORDER BY person_type
-- LIMIT 10;