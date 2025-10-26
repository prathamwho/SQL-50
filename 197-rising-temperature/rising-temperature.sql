SELECT today.id 
FROM Weather AS today
WHERE EXISTS

(SELECT 1 FROM Weather AS yesterday
WHERE yesterday.temperature < today.temperature
AND
today.recordDate - yesterday.recordDate = 1)