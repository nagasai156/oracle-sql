SELECT COUNT(*) FROM ELECTIONS;

SELECT COUNT(CAND_NAME) FROM ELECTIONS WHERE year=2004;

select count(cand_name) from elections where cand_sex = 'F';

select count(cand_name) FROM elections where st_name = 'West Bengal' and year = 2014;

select st_name,sum(totvotpoll) over(partition by st_name) from elections where partyname = 'BJP';

select sum(totvotpoll) from elections where year = 1987 and st_name = 'Andhra Pradesh' and partyname = 'BJP';