/* https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true */

select distinct CITY
from STATION
where CITY like '%a'
or CITY like '%e'
or CITY like '%i'
or CITY like '%o'
or CITY like '%u'
