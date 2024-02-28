USE bus_passenger_tracker;

-- View unique trips
SELECT DISTINCT trip_id, bus_id
FROM passenger_pays_trip;

-- OR
SELECT DISTINCT id AS trip_id, bus_id
FROM trip;