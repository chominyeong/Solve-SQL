/* https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true */

select CITY, length(CITY)
from STATION
order by length(CITY) asc, CITY
LIMIT 1;

select CITY, length(CITY)
from STATION
order by length(CITY) desc, CITY
LIMIT 1;




/* 다른 풀이 */
/* order by 뒤에 몇 번째 컬럼인지 숫자만 적어도 가능 */

select CITY, length(CITY)
from STATION
order by 2, 1
LIMIT 1;

select CITY, length(CITY)
from STATION
order by 2 desc, 1
LIMIT 1;
