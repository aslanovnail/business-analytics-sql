-- Top neighborhoods by ride activity
SELECT neighborhood, COUNT(*) AS ride_count
FROM trips
GROUP BY neighborhood
ORDER BY ride_count DESC;

-- Taxi companies by trip volume
SELECT company_name, COUNT(*) AS total_trips
FROM trips
GROUP BY company_name
ORDER BY total_trips DESC;

-- Average trips by weather condition
SELECT weather_condition, AVG(trip_count) AS avg_trips
FROM weather_trips
GROUP BY weather_condition
ORDER BY avg_trips DESC;

-- Top 5 neighborhoods only
SELECT neighborhood, COUNT(*) AS ride_count
FROM trips
GROUP BY neighborhood
ORDER BY ride_count DESC
LIMIT 5;

-- Total trips per day
SELECT DATE(trip_time) AS trip_date, COUNT(*) AS total_trips
FROM trips
GROUP BY trip_date
ORDER BY trip_date;

-- Join example (if tables exist)
SELECT t.neighborhood, w.weather_condition, COUNT(*) AS trips
FROM trips t
JOIN weather_trips w ON t.trip_id = w.trip_id
GROUP BY t.neighborhood, w.weather_condition
ORDER BY trips DESC;
