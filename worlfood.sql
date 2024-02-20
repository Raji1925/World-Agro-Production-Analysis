use food;
select * from world;

###---Total Production by Crop for Each Country in 1995---###

SELECT Entity,
       SUM(CASE WHEN Year = 1995 THEN Maize ELSE 0 END) AS Maize_Production,
       SUM(CASE WHEN Year = 1995 THEN Rice ELSE 0 END) AS Rice_Production,
       SUM(CASE WHEN Year = 1995 THEN Yams ELSE 0 END) AS Yam_Production,
       SUM(CASE WHEN Year = 1995 THEN Wheat ELSE 0 END) AS Wheat_Production,
       SUM(CASE WHEN Year = 1995 THEN Tomatoes ELSE 0 END) AS Tomatoes_Production,
       SUM(CASE WHEN Year = 1995 THEN Sweet_Potatoes ELSE 0 END) AS Sweetpotatoes_Production,
       SUM(CASE WHEN Year = 1995 THEN Rye ELSE 0 END) AS Rye_Production,
       SUM(CASE WHEN Year = 1995 THEN Potatoes ELSE 0 END) AS Potatoes_Production,
       SUM(CASE WHEN Year = 1995 THEN Oranges ELSE 0 END) AS Oranges_Production,
       SUM(CASE WHEN Year = 1995 THEN Peas ELSE 0 END) AS Peas_Production,
       SUM(CASE WHEN Year = 1995 THEN Grapes ELSE 0 END) AS Grapes_Production,
       SUM(CASE WHEN Year = 1995 THEN Bananas ELSE 0 END) AS Bananas_Production,
       SUM(CASE WHEN Year = 1995 THEN Avocados ELSE 0 END) AS Avocados_Production,
       SUM(CASE WHEN Year = 1995 THEN Apples ELSE 0 END) AS Apples_Production
       
FROM world
GROUP BY Entity
ORDER BY Entity;

###---Total Production by Crop for Each Country in 2021---###
SELECT Entity,
       SUM(CASE WHEN Year = 2021 THEN Maize ELSE 0 END) AS Maize_Production,
       SUM(CASE WHEN Year = 2021 THEN Rice ELSE 0 END) AS Rice_Production,
       SUM(CASE WHEN Year = 2021 THEN Yams ELSE 0 END) AS Yam_Production,
       SUM(CASE WHEN Year = 2021 THEN Wheat ELSE 0 END) AS Wheat_Production,
       SUM(CASE WHEN Year = 2021 THEN Tomatoes ELSE 0 END) AS Tomatoes_Production,
       SUM(CASE WHEN Year = 2021 THEN Sweet_Potatoes ELSE 0 END) AS Sweetpotatoes_Production,
       SUM(CASE WHEN Year = 2021 THEN Rye ELSE 0 END) AS Rye_Production,
       SUM(CASE WHEN Year = 2021 THEN Potatoes ELSE 0 END) AS Potatoes_Production,
       SUM(CASE WHEN Year = 2021 THEN Oranges ELSE 0 END) AS Oranges_Production,
       SUM(CASE WHEN Year = 2021 THEN Peas ELSE 0 END) AS Peas_Production,
       SUM(CASE WHEN Year = 2021 THEN Grapes ELSE 0 END) AS Grapes_Production,
       SUM(CASE WHEN Year = 2021 THEN Bananas ELSE 0 END) AS Bananas_Production,
       SUM(CASE WHEN Year = 2021 THEN Avocados ELSE 0 END) AS Avocados_Production,
       SUM(CASE WHEN Year = 2021 THEN Apples ELSE 0 END) AS Apples_Production
       
FROM world
GROUP BY Entity
ORDER BY Entity;

###---Top 5 Countries with Highest Wheat Production in 2004---###

SELECT Entity, Wheat
FROM world
WHERE Year = 2004
ORDER BY Wheat DESC
LIMIT 5;


###---Top 5 Countries with Highest Rice Production in 2021---###

SELECT Entity, Rice
FROM world
WHERE Year = 2021
ORDER BY Wheat DESC
LIMIT 5;

###---Top 5 Countries with Highest Apples Production in 1993---###

SELECT Entity, Apples
FROM world
WHERE Year = 1993
ORDER BY Wheat DESC
LIMIT 5;

###---Total Production of Fruits in the India from 1981 to 2021---###

SELECT Year,
       SUM(Bananas) + SUM(Avocados) + SUM(Apples) + SUM(Grapes) + SUM(Oranges) AS Total_Fruit_Production
FROM world
WHERE Entity = 'India'
GROUP BY Year
ORDER BY Year;


###---Total Production of Pulses in the India from 1981 to 2021---###

SELECT Year,
       SUM(Maize) + SUM(Rice) + SUM(Wheat) + SUM(Rye)  AS Total_Pulse_Production
FROM world
WHERE Entity = 'India'
GROUP BY Year
ORDER BY Year;


###---Total Production of Vegetables in the India from 1981 to 2021---###

SELECT Year,
       SUM(Yams) + SUM(Tomatoes) + SUM(Sweet_potatoes) + SUM(Potatoes) + SUM(Peas)  AS Total_Vegetable_Production
FROM world
WHERE Entity = 'India'
GROUP BY Year
ORDER BY Year;

###---Top and Low Maize Producing Countries---###

SELECT Entity AS Country,
       MAX(Maize) AS Top_Maize_Production,
       MIN(Maize) AS Low_Maize_Production
FROM world
GROUP BY Entity;

###---Top and Low Rice Producing Countries---###

SELECT Entity AS Country,
       MAX(Rice) AS Top_Rice_Production,
       MIN(Rice) AS Low_Rice_Production
FROM world
GROUP BY Entity;

###---Top and Low Yams Producing Countries---###

SELECT Entity AS Country,
       MAX(Yams) AS Top_Yams_Production,
       MIN(Yams) AS Low_Yams_Production
FROM world
GROUP BY Entity;

###---Top and Low Wheat Producing Countries---###

SELECT Entity AS Country,
       MAX(Wheat) AS Top_Wheat_Production,
       MIN(Wheat) AS Low_Wheat_Production
FROM world
GROUP BY Entity;

###---Top and Low Tomatoes Producing Countries---###

SELECT Entity AS Country,
       MAX(Tomatoes) AS Top_Tomatoes_Production,
       MIN(Tomatoes) AS Low_Tomatoes_Production
FROM world
GROUP BY Entity;

###---Top and Low Sweet Potatoes Producing Countries---###

SELECT Entity AS Country,
       MAX(Sweet_Potatoes) AS Top_Sweet_Potatoes_Production,
       MIN(Sweet_Potatoes) AS Low_Sweet_Potatoes_Production
FROM world
GROUP BY Entity;

###---Top and Low Rye Producing Countries---###

SELECT Entity AS Country,
       MAX(Rye) AS Top_Rye_Production,
       MIN(Rye) AS Low_Rye_Production
FROM world
GROUP BY Entity;

###---Top and Low Potatoes Producing Countries---###

SELECT Entity AS Country,
       MAX(Potatoes) AS Top_Potatoes_Production,
       MIN(Potatoes) AS Low_Potatoes_Production
FROM world
GROUP BY Entity;

###---Top and Low Oranges Producing Countries---###

SELECT Entity AS Country,
       MAX(Oranges) AS Top_Oranges_Production,
       MIN(Oranges) AS Low_Oranges_Production
FROM world
GROUP BY Entity;

###---Top and Low Peas Producing Countries---###

SELECT Entity AS Country,
       MAX(Peas) AS Top_Peas_Production,
       MIN(Peas) AS Low_Peas_Production
FROM world
GROUP BY Entity;

###---Top and Low Grapes Producing Countries---###

SELECT Entity AS Country,
       MAX(Grapes) AS Top_Grapes_Production,
       MIN(Grapes) AS Low_Grapes_Production
FROM world
GROUP BY Entity;

###---Top and Low Bananas Producing Countries---###

SELECT Entity AS Country,
       MAX(Bananas) AS Top_Bananas_Production,
       MIN(Bananas) AS Low_Bananas_Production
FROM world
GROUP BY Entity;

###---Top and Low Avocados Producing Countries---###

SELECT Entity AS Country,
       MAX(Avocados) AS Top_Avocados_Production,
       MIN(Avocados) AS Low_Avocados_Production
FROM world
GROUP BY Entity;

###---Top and Low Apples Producing Countries---###

SELECT Entity AS Country,
       MAX(Apples) AS Top_Apples_Production,
       MIN(Apples) AS Low_Apples_Production
FROM world
GROUP BY Entity;
