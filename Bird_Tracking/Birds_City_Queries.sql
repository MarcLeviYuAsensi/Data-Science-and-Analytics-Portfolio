-- Step 3 --
SELECT * FROM city_weather
LIMIT 5;

-- Step 4 -- 
SELECT * FROM bird_data
LIMIT 5;

-- Step 7 --
SELECT bird.id, bird.altitude, bird.date_time, bird.device_info_serial, bird.direction, bird.latitude, bird.longitude, bird.speed_2d, bird.bird_name, bird.nearest_city, bird.country, city.avg_temp
FROM bird_data as bird
LEFT JOIN city_weather as city
ON city.DATE = bird.date AND bird.nearest_city = city.CITY
ORDER BY bird.id;