/* https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true */
/* = : 무조건 일치, like : 유연하게 적용 가능 */


Select CITY
from STATION
where CITY like 'a%'
or CITY like 'e%'
or CITY like 'i%'
or CITY like 'o%'
or CITY like 'u%';
