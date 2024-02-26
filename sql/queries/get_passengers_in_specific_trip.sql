USE bus_passenger_tracker;

-- Get passenger names, origin, destination, and home_address who are in a specific trip
SELECT p.id,
		CONCAT(first_name, " ", middle_name, " " ,last_name) AS psngr_name,
        ppt.trip_id,
        t.departure_time,
        CONCAT(ppt.psngr_o_spec, ", ", ppt.psngr_o_municipality, ", ", ppt.psngr_o_province) AS origin,
        CONCAT(ppt.psngr_d_spec, ", ", ppt.psngr_d_municipality, ", ", ppt.psngr_d_province) AS destination,
        CONCAT(ha.specific_address, ", ", ha.municipality, ", ", ha.province) AS address,
        cn.c_number
FROM passenger_pays_trip as ppt
INNER JOIN person as p
ON ppt.psngr_id = p.id
INNER JOIN trip as t
ON t.id = ppt.trip_id
LEFT JOIN home_address AS ha
ON ha.id = p.id
LEFT JOIN contact_number AS cn
ON cn.person_id = p.id
WHERE ppt.trip_id = 1;