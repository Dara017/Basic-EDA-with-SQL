--BASIC DATA EXPLORATION WITH SQL

-- Overview of the Database - 1
SELECT *
FROM [SQL Project]..movies$

-- Top 20 Rated Movies - 2
SELECT TOP 20 Title, Year, rating, Income, Certificate, Stars
FROM [SQL Project]..movies$
ORDER BY rating DESC

-- Top Rated Movies Per Year - 3
SELECT MAX(rating) AS HighestRating, year, Title, Budget, Income, Certificate, Stars
FROM [SQL Project]..movies$
GROUP BY year, Title, Budget, Income, Certificate, Stars
ORDER BY MAX(rating) DESC

-- Top 20 Movies with the highest Income - 4
SELECT TOP 20 Title, Year, rating, Income, Certificate, Stars
FROM [SQL Project]..movies$
where Income != 'Unknown'
ORDER BY Income DESC

-- Country and Rating Correlation? - 5
SELECT title, rating, Country_of_origin
FROM [SQL Project]..movies$
ORDER BY rating DESC

-- Number of Movies Produced per Country - 6
SELECT Country_of_origin, COUNT(title) AS NumberofMovies
FROM [SQL Project]..movies$
GROUP BY Country_of_origin
ORDER BY COUNT(title) DESC

-- Correlation  between Movie Runtime and Rating - 7
SELECT Title, Runtime, rating, Income
FROM [SQL Project]..movies$
ORDER BY Runtime DESC

-- Number of Movies produced per Month - 8
SELECT month, COUNT(title) AS NumberofMovies
FROM [SQL Project]..movies$
GROUP BY month
ORDER BY COUNT(title) DESC

-- Number of Movies per Genre - 9
SELECT genre, COUNT(title) AS NumberofMovies
FROM [SQL Project]..movies$
GROUP BY genre
ORDER BY COUNT(title) DESC

-- Rating per Genre - 10
SELECT genre, AVG(rating) AS AverageRating
FROM [SQL Project]..movies$
GROUP BY genre
ORDER BY AVG(rating) DESC




