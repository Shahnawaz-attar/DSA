1)-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

" SELECT COUNT(*) - COUNT(DISTINCT CITY) FROM CITY "


-- 2) Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

-- table name is STATION 

-- first selecy the shortest and longest city name along with name

"select city, length(city) from station
order by length(city),city asc
limit 1;
select city, length(city) from station
order by length(city) desc
limit 1;"




-- 3) Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

    -- // user regexp_substr to get the first letter of the city name

    "SELECT DISTINCT city FROM station WHERE city REGEXP "^[aeiou].*";"


-- 4) Query the list of CITY names ending with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.


    "SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) IN ('a','i','e','o','u');"


-- 5) Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates..

    "SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) IN ('a','i','e','o','u') AND LEFT(CITY,1) IN ('a','i','e','o','u')"


-- 6) Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID..

    "SELECT NAME FROM STUDENTS WHERE MARKS>75 ORDER BY SUBSTRING(NAME,-3), ID"


    