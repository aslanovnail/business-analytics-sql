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
