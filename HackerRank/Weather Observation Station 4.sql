/* https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true */

select count(CITY) - count(distinct CITY) from STATION;
